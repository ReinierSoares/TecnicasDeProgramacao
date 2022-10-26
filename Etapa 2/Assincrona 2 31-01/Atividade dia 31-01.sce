clc
clear

N= 32;                          //Numero de Amostras
V1= zeros(1,N);
I1= zeros(1,N);

V2= zeros(1,N);
I2= zeros(1,N);

V3= zeros(1,N);
I3= zeros(1,N);

disp('Código Draft para o Calculo Trifásico da Potência Ativa, Reativa, Aparente e Complexa: ')
disp('.');
disp('.');


//Fase 1
for n=1:N                                          //Tensão da fase 1
   V1(1,n)= input( 'Coloque o termo da tensão na fase 1: ')
end

for n=1:N                                          //Corrente da fase 1
   I1(1,n)= input( 'Coloque o termo da corrente na fase 1: ')
end

//Fase 2
for n=1:N                                          //Tensão da fase 2
   V2(1,n)= input( 'Coloque o termo da tensão na fase 2: ')
end

for n=1:N                                          //Corrente da fase 2
   I2(1,n)= input( 'Coloque o termo da corrente da fase 2: ')
end

//Fase 3
for n=1:N                                          //Tensão da fase 3
   V3(1,n)= input( 'Coloque o termo da tensão da fase 3: ')
end

for n=1:N                                          //Corrente da fase 3
   I3(1,n)= input( 'Coloque o termo da corrente da fase 3: ')
end

//Potencia Ativa
E1=0
E2=0
E3=0

for n=1:N
    E1= E1 + (V1(1,n)*I1(1,n))                    //Calculo de Energia
    E2= E2 + (V2(1,n)*I2(1,n))                    //Calculo de Energia
    E3= E3 + (V3(1,n)*I3(1,n))                    //Calculo de Energia
end

P1= E1/N;                                     //Potencia Ativa em Watts
P2= E2/N;                                     //Potencia Ativa em Watts
P3= E3/N;                                     //Potencia Ativa em Watts

PA= P1+P2+P3;                                //Potencia Ativa
disp('Potencia Ativa (P): ')
disp(PA)

// Tensão e Corrente RMS
v1=0;
i1=0;
v2=0;
i2=0;
v3=0;
i3=0;
for k=1:N
    v1=v1+(V1(1,k)^2);
    i1=i1+(I1(1,k)^2);
    v2=v2+(V2(1,k)^2);
    i2=i2+(I2(1,k)^2);
    v3=v3+(V3(1,k)^2);
    i3=i3+(I3(1,k)^2);
end

vrms1=sqrt((1/N)*v1);                                         //Tensão Rms em Volts
irms1=sqrt((1/N)*i1);                                         //Corrente Rms em Ampere
vrms2=sqrt((1/N)*v2);                                         //Tensão Rms em Volts
irms2=sqrt((1/N)*i2);                                         //Corrente Rms em Ampere
vrms3=sqrt((1/N)*v3);                                         //Tensão Rms em Volts
irms3=sqrt((1/N)*i3);                                         //Corrente Rms em Ampere

//Potencia Aparente

S1= vrms1 * irms1;
S2= vrms2 * irms2;
S3= vrms3 * irms3;

S= S1 + S2 + S3;                              //Potencia Aparente em Volt Ampere

disp('Potencia Aparente (S): ')
disp(S)

//Potencia Reativa
Q= sqrt((S^2)-(PA^2));                       //Potencia Reativa em Volt Ampere Reativo
disp('Potencia Reativa (Q): ')
disp(Q)

//Potencia Complexa
SC= PA + Q*%i                               //Potencia Complexa em Volt Ampere
disp('Potencia Complexa (S): ')
disp(SC)




