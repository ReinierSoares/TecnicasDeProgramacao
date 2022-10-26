clc 
clear


f=60;                       //frequencia do sinal
N=12;                        //NUMERO DE amostras
t=0:0.000001:(1/f);             //Tempo do dominio do tempo continuo
tdisc=linspace(0,(1/f),N+1)     //Tempo no dominio do tempo discreto

//SInal do dominio do tempo continuo
yt=10*sin(2*%pi*f*t);

//Sinal do dominio do tempo discreto
ydisc=10*sin(2*%pi*f*tdisc);

plot(t,yt,'LineWidth',2)
//hold on
//stem(tdisc,ydisc,'LineWidth',2)

n=0;
for k=1:N
    n=n+(ydisc(k)^2);
end
vrms=sqrt((1/N)*n);         //Tensão Rms 
