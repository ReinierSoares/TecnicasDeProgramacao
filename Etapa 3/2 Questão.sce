                          //2 Questão                                                 

clc
clear 

fo=50;                                                       //FREQUENCIA FUNDAMENTAL
N=64;                                                        //64 amostras por ciclo (período)
tdisc=linspace(0,(1/60),N+1)                                 //Tempo no dominio do tempo discreto

function  [x, y,z,t]= myfct(pico1, fase1, pico2, fase2);                                            // Function que computa o Valor Eficaz e o Angulo de fase
    
    vt=pico1 * cos((2*%pi*fo*tdisc) + ((fase1)))         // Sinal da Tensão do Dominio no tempo discreto
    grau1= ((fase1*180)/%pi);
    disp('Angulo de fase do sinal em graus(°)',grau1);
    
    it=pico2 * cos((2*%pi*fo*tdisc) - ((fase2)))                 //Sinal da Corrente do Dominio no tempo discreto
    grau2= ((fase2*180)/%pi);
    disp('Angulo de fase do sinal em graus(°)',grau2);
    
//Calculo da TDF para a componente Fundamental de Xr
Vr=0;
Ir=0;
k=1;

for n=1:N
    Vr = Vr + vt(n)*(cos(2*%pi*k*(n-1)/N));
    Ir = Ir + it(n)*(cos(2*%pi*k*(n-1)/N));
end

Vr= (sqrt(2)/N)*Vr;
Ir= (sqrt(2)/N)*Ir;

//Calculo da TDF para a componente Fundamental de Xi
Vi=0;
Ii=0;
k=1;

for n=1:N
    Vi = Vi + vt(n)*(sin(2*%pi*k*(n-1)/N));
    Ii = Ii + it(n)*(sin(2*%pi*k*(n-1)/N));
end

Vi= (sqrt(2)/N)*Vi;
Ii= (sqrt(2)/N)*Ii;

//Potencia Ativa
P=(Vr*Ir)+(Vi*Ii);
disp('Potencia Ativa (P): ',P)

//Potencia Reativa
Q=(Vi*Ir)-(Vr*Ii);
disp('Potencia Reativa (Q): ',Q)

//Energia
E=P*N;
disp('Energia (E): ',E)

//Potencia Aparente
S= sqrt((P^2)+(Q^2));
disp('Potencia Aparente (S): ',S)

//Fator de Potencia
pf= P/S;
disp('Fator de Potencia (pf): ',pf)

//Consumo em kWh
T=8
C=(P * T)/1000;
disp('Consumo (kWh): ',C);

endfunction

x=0;
y=0;
z=0;
t=0
    pico1= input('Digite o Valor de Pico do Sinal senoidal de Vt: ');              //O usuario fornece o valor de pico do Sinal Senoidal
    fase1= input('Digite a Fase do sinal em radiano de Vt: ');                     //O usuario fornece a fase do Sinal em radiano
    pico2= input('Digite o Valor de Pico do Sinal senoidal de It: ');              //O usuario fornece o valor de pico do Sinal Senoidal
    fase2= input('Digite a Fase do sinal em radiano de It: ');                     //O usuario fornece a fase do Sinal em radiano
    
[x,y,z,t]= myfct(pico1,fase1,pico2,fase2);

