//1 QUESTÃO

H1= 519 + (7.55 * 400.2) + (0.00158 * (400.2 ^2));              //Unidade 1
H2= 316 + (8.02 * 340.7) + (0.00202 * (340.7 ^2));              //Unidade 2
H3= 82 + (9.11 * 131.7) + (0.00555 * (131.7 ^2));               //Unidade 3
H4= 90 + (11.33 * 90.3) + (0.00123 * (90.3 ^2));                //Unidade 4

CT= (H1 * 1.17) + (H2 * 1.25) + (H3 * 1.31) + (H4 * 0.15);      //Custo Total em R$/h

//2 QUESTÃO

c= 6.28;                                                        //0  fator de escala .
k= 2.22;                                                        //Parâmetro de forma
Vvento= 0:0.1:18                                                //A velocidade do vento medido em m/s.

We= (k/c) .* ((Vvento ./ c)^k-1) .* exp(-((Vvento ./ c)^k));      //Expressão de Weibull.
plot(We)                                                        // Plota o Grafico de We.

Vm= Vvento ./ 2                                                 //Retorna o Valor medio em cada vetor linearmente espaçado.
Vmedio= sum(Vm);                                                //Retorna a soma dos valores médios do vetor linearmente espaçado.

//3 QUESTÃO

TaxaC= input("Insira um valor para o C_rate: ")                 //O usuário insere um valor para a taxa C.
CapBat= input("Insira um valor de capacidade da bateria: ")     //O usuário insere um valor de capacidade da bateria.

Descarga= CapBat * TaxaC;                                       //Corrente de Descarga.
Duração= CapBat / Descarga;                                     //Duração da corrente de descarga.

//4 QUESTÃO

Rkm= 3;                                                                             //A resistência série rkm.
Xkm= 75;                                                                            //A reatãncia série xkm.
Vk= 138*(10^3)                                                                      //Tensão (kV) no barramento K.
Vm= 137.5*(10^3)                                                                    //Tensão (kV) no barramento M.
Ok= 0;                                                                              //Angulo (rad.) no barramento K.
Om= -0.028;                                                                         //Angulo (rad.) no barramento M.
Ek= Vk * exp(Ok * %i);
Em= Vm * exp(Om * %i);
Gkm = ((Rkm) / ((Rkm^2) + (Xkm^2)));
Bkm = -((Xkm) / ((Rkm^2) + (Xkm^2)));

Zkm = complex(Rkm,Xkm);                                                             //A impedancia série.
Ykm = (Zkm^-1)==complex(Gkm,Bkm);                                                   //a admitância série.

Pkm = ((Vk^2) * Gkm) - (Vk*Vm*Gkm*cos(Ok - Om)) - (Vk*Vm*Bkm*sin(Ok - Om));         //Fluxos de potência ativa.
Qkm = ((-Vk^2)*Bkm) + (Vk*Vm*Bkm*cos(Ok - Om)) - (Vk*Vm*Gkm*sin(Ok - Om));          //Fluxo de potência reativa.
Pperdas = Gkm * ((abs(Ek - Em))^2);                                                 //Perda de potência


