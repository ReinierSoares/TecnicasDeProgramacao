//16 Questão
n= 4:2:24;                                                      //Vetor linearmente espaçado de 2 unidades no intervalo fechado de 4 a 24 meses.
Valor= 10^5;                                                    //Valor total do empréstimo.
Taxa= 4/100;                                                    //Taxa de Juros.

Parcela= Valor.*((((1 + Taxa).^n).*Taxa)./(((1 + Taxa).^n)-1));       //Parcelas Fixas.

//17 Questão
Valor2= 5*(10^5);                                                    //Valor total do empréstimo.
Taxa2= 5.5/100;                                                       //Taxa de Juros.

Parcela2= Valor2.*((((1 + Taxa2).^n).*Taxa2)./(((1 + Taxa2).^n)-1));  //Parcelas Fixas.
