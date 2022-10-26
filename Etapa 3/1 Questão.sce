//Instituto Federal de Educação, Ciência e Tecnologia do Maranhão
//3 Avaliação - Técnicas de Programação
//Reinier Soares Berthier - 20211EE0021

                          //1 Questão                                                 

clc
clear 

fo=50;                                                                          //FREQUENCIA FUNDAMENTAL
N=32;                                                                            //32 amostras por ciclo (período)
tdisc=linspace(0,(1/60),N+1)                                                     //Tempo no dominio do tempo discreto

function  [x, y]= myfct(pico, fase);                                            // Function que computa o Valor Eficaz e o Angulo de fase

    grau= ((fase*180)/%pi);
    vt= pico * sin((2*%pi*fo*tdisc) + (fase))                                // Sinal da Tensão do Dominio no tempo discreto em Volts

n=0;
for k=1:N
    n=n+(vt(k)^2);
end
    rms=sqrt((1/N)*n);                                         //Tensão Rms em Volts
    disp('Valor eficaz (RMS): ',rms);

    disp('Angulo de fase do sinal em graus(°): ',grau);

endfunction

x=0;
y=0;
    pico= input('Digite o Valor de Pico do Sinal senoidal: ');              //O usuario fornece o valor de pico do Sinal Senoidal
    fase= input('Digite a Fase do sinal em radiano: ');                     //O usuario fornece a fase do Sinal em radiano
    
[x,y]= myfct(pico,fase);




