clc
clear 

fo=60;                                                       //FREQUENCIA FUNDAMENTAL
N=64;                                                        //64 amostras por ciclo (período)
tdisc=linspace(0,(1/60),N+1)                                 //Tempo no dominio do tempo discreto
vt=311.127 * cos((2*%pi*fo*tdisc) + ((4.8*%pi)/180))         // Sinal da Tensão do Dominio no tempo discreto
it=22.627 * cos((2*%pi*fo*tdisc) - (%pi/18))                 //Sinal da Corrente do Dominio no tempo discreto

// Tensão e Corrente RMS
n=0;
m=0;
for k=1:N
    n=n+(vt(k)^2);
    m=m+(it(k)^2);
end

vrms=sqrt((1/N)*n);                                         //Tensão Rms em Volts
irms=sqrt((1/N)*m);                                         //Corrente Rms em Ampere

disp('Tensão Rms (Vrms): ');
disp(vrms);

disp('Corrente Rms (Irms): ');
disp(irms);

//Potencia Ativa
E=0
for j=1:N
    E= E + (vt(j)*it(j))                    //Calculo de Energia
end

P= E/N;                                     //Potencia Ativa em Watts

disp('Potencia Ativa (P): ',P)

//Potencia Aparente
S= vrms * irms;                              //Potencia Aparente em Volt Ampere
disp('Potencia Aparente (S): ',S)

//Potencia Reativa
Q= sqrt((S^2)-(P^2));                       //Potencia Reativa em Volt Ampere Reativo
disp('Potencia Reativa (Q): ',Q)

//Fator de Potencia
fp= P/S;                                    //Angulo do Triângulo de Potencias
disp('Fator de Potencia (Fp): ',fp)

plot(tdisc,vt,'LineWidth',2)
