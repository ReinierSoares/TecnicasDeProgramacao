//5 Questão

n= 1985:1:2050;                                          //Vetor linearmente espaçado de 1 unidade no intervalo fechado de 1985 a 2050.
P= 230.*exp(0.0065.*n);                                  //A taxa aproximada de crescimento populacional em milhoês de um país nos anos de 1985 a 2050.

//6 Questão

N= (5.7).*exp(-0.015.*n);                                //A taxa aproximada de crescimento populacional em milhoês de um país nos anos de 1985 a 2050.
TN= N.*1000./P;                                           //A taxa de natalidade anual de um país 

//7 Questão

x= 0:10:360;                                            //Vetor linearmente espaçado de 10 unidades no intervalo fechado de 0 a 360 graus.
T=cosd(x) + %i.*sind(x);                               //A Direita da igualdade da relação de Euler.
Z= exp(%i.*x);                                         //A Esquerda da igualdade da relação de Euler.

//8 Questão

xr= linspace(0,360,20);                                    //Vetor com 20 valores linearmente espaçados no intervalo fechado de 0 a 360 graus.
Sh=sinh((xr.*%pi)/180);                                   //Seno hiperbólico de 0 a 2pi com a conversão para radiano.
Ch=cosh((xr*%pi)/180);                                   //Cosseno hiperbólico de 0 a 2pi com a conversão para radiano.
ee=((exp(xr) - exp(-xr))/2);                             //Igualdade do seno e cosseno hiperbolicos para fins de comparação lógica.

//9 Questão

xe= linspace(0,360,30);                                  //Vetor com 30 valores linearmente espaçados no intervalo fechado de 0 a 360 graus.
y= (sinh((xe*%pi)/180)^2) - (cosh((xe*%pi)/180)^2);      //Função que retorna o valor no intervalo de 0 a 2pi em radiano.
yz= (xe*%pi)/180;                                       //F(x) para comparação lógica no intervalo de 0 a 2pi em radiano.






