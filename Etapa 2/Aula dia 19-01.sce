clc
clear

fo= 60;                 // frequencia fundamental
N = 16;                 // numero de amostras
ciclo = 1;               // numero de ciclos

//Sinal Continuo
t= 0:0.00001:(1/fo);                //emulação do dominio no tempo continuo
vt=100*sqrt(2) * cos(2*%pi*fo*t )         // Sinal do Dominio no tempo continuo

//Sinal Discreto
tdisc= linspace(0,(1/fo),(N+1));        //emulação do dominio do tempo discreto
vdisc=100*sqrt(2) * cos(2*%pi*fo*tdisc )  ;    //sinal do dominio no tempo discreto

//Calculo da TDF para a componente Fundamental
V=0;
k=1;

for n=1:N                   //era pra ser de 0 ate N-1
    V = V + vdisc(n)*cos(2*%pi*k*(n-1)/N) - (1*%i*sin(2*%pi*k*(n-1)/N))
end

V= (sqrt(2)/N)*V;




