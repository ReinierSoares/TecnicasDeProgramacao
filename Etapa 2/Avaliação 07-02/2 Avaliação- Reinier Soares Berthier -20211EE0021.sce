//Instituto Federal de Educação, Ciência e Tecnologia do Maranhão
//2 Avaliação - Técnicas de Programação
//Reinier Soares Berthier - 20211EE0021

clc
clear 

fo=60;                                                       //FREQUENCIA FUNDAMENTAL
N=64;                                                        //64 amostras por ciclo (período)

V= zeros(1,N);
I= zeros(1,N);

disp('Código que calcula a Potência Ativa, Reativa, Aparente, Complexa, o fator de Potência e o consumo de energia: ')

//Fase 
for n=1:N                                          //Tensão da fase 
   V(1,n)= input( 'Coloque o valor da tensão: ')
end

for n=1:N                                          //Corrente da fase 
   I(1,n)= input( 'Coloque o valor da corrente: ')
end

//Potencia Ativa
E=0
for n=1:N
    E= E + (V(1,n)*I(1,n))                    //Calculo de Energia
end
P= E/N;                                     //Potencia Ativa em Watts
disp('Potencia Ativa (P): ',P);

// Tensão e Corrente RMS
v=0;
i=0;
for k=1:N
    v=v+(V(1,k)^2);
    i=i+(I(1,k)^2);
end
vrms=sqrt((1/N)*v);                                         //Tensão Rms em Volts
disp('Tensão RMS: ',vrms);
irms=sqrt((1/N)*i);                                         //Corrente Rms em Ampere
disp('Corrente RMS: ',irms);

//Potencia Aparente
S= vrms * irms;
disp('Potencia Aparente (S): ',S);

//Potencia Reativa
Q= sqrt((S^2)-(P^2));                                //Potencia Reativa em Volt Ampere Reativo
disp('Potencia Reativa (Q): ',Q)

//Potencia Complexa 
SC= P + Q*%i                                        //Potencia Complexa em Volt Ampere
disp('Potencia Complexa (S): ',SC)

//Fator de Potencia
fp= P/S;                                            //Angulo do Triângulo de Potencias
disp('Fator de Potencia (Fp): ', fp)

//Calculo do Consumo de Energia em kWh
t= 4;
C= (P/1000) * t
disp('Consumo de Energia(kWh), durante 4 (quatro) horas: ', C);


