clc
clear

fo= 50;                                          //Frequência fundamental do sinal
N = 64;                                          //Número de amostras por período

//GRAFICO DISTORCIDO DA SOMA DAS HARMONICAS NO TEMPO CONTINUO
t= 0:0.0000001:(1/fo)                             //Dominio do tempo continuo
Ha= 179.605 * cos(2*%pi*fo*t);
Hb= 9 * cos(2*%pi*(3*fo)*t + (%pi/10));
Hc= 5 * cos(2*%pi*(5*fo)*t - (%pi/25));

H=Ha+Hb+Hc;
plot(t,H,'LineWidth',2)


//Componentes Harmõnicas
tdisc= linspace(0,(1/fo),(N+1));                 //Dominio do tempo discreto
H1= 179.605 * cos(2*%pi*fo*tdisc);
H2= 9 * cos(2*%pi*(3*fo)*tdisc + (%pi/10));
H3= 5 * cos(2*%pi*(5*fo)*tdisc - (%pi/25));

plot(tdisc,H1,'LineWidth',2)    //                                  
plot(tdisc,H2,'LineWidth',2)    //          Plot Gráficos           
plot(tdisc,H3,'LineWidth',2)    //                                  

//Cálculo da TDF para a componente Fundamental
TDF1=0;
k=1;
for n=1:N
    TDF1 = TDF1 + H1(n)*(cos(2*%pi*k*(n-1)/N) - (%i*sin(2*%pi*k*(n-1)/N)));
end

TDF1= (sqrt(2)/N)*TDF1;

//Cálculo da TDF para a componente Harmonica de ordem 3
TDF2=0;
k=3;
for n=1:N
    TDF2 = TDF2 + H2(n)*(cos(2*%pi*k*(n-1)/N) - (%i*sin(2*%pi*k*(n-1)/N)));
end

TDF2= (sqrt(2)/N)*TDF2;

//Cálculo da TDF para a componente Harmonica de ordem 5
TDF3=0;
k=5;
for n=1:N
    TDF3 = TDF3 + H3(n)*(cos(2*%pi*k*(n-1)/N) - (%i*sin(2*%pi*k*(n-1)/N)));
end

TDF3= (sqrt(2)/N)*TDF3;

// 1 HARMONICA
disp('Tranformada Discreta de Fourier (TDF1) na Forma Retangular:',TDF1)        //TDF na forma retangular
disp('Magnitude da TDF1 na Forma Polar: ',abs(TDF1));                           //Magnitude da Forma Polar
disp('Ângulo da TDF1 na Forma Polar: ',atand(imag(TDF1),real(TDF1)))            //Ângulo Da Forma Polar

//2 HARMONICA
disp('Tranformada Discreta de Fourier (TDF2) na Forma Retangular:',TDF2)
disp('Magnitude da TDF2 na Forma Polar: ',abs(TDF2));
disp('Ângulo da TDF2 na Forma Polar: ',atand(imag(TDF2),real(TDF2)))

//3 HARMONICA
disp('Tranformada Discreta de Fourier (TDF3) na Forma Retangular:',TDF3)
disp('Magnitude da TDF3 na Forma Polar: ',abs(TDF3));
disp('Ângulo da TDF3 na Forma Polar: ',atand(imag(TDF3),real(TDF3)))



