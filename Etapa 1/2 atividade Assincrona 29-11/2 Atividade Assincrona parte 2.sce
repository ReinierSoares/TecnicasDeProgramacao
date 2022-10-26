//10 Questão
a= input('Digite o valor da variável a =');                 //O usuário fornece o valor de a
b= input('Digite o valor da variável b =');                 //O usuário fornece o valor de b
c= input('Digite o valor da variável c =');                 //O usuário fornece o valor de c
delta= (b^2) - (4*a*c);                                     //O valor do delta da formúla quadrática.
r1= (-b + sqrt(delta))/(2*a);                               //Primeira Raiz da equação quadrática.
r2= (-b - sqrt(delta))/(2*a);                               //Segunda Raiz da equação quadrática.

//11 Questão
M= input('Digite o valor do cateto =');                     //O usuário fornece o valor do cateto de um triângulo retângulo.
N= input('Digite o valor do cateto =');                     //O usuário fornece o valor do cateto de um triângulo retângulo.
H= sqrt((M^2) + (N^2));                                     //O valor da Hipotenusa de um triângulo retângulo.

//12 Questão
R= input('Digite o valor do raio =');                     //O usuário fornece o raio da circuferência.
d= 2*R;                                                   //Diâmetro da circuferência.
C= 2*%pi*R;                                               //Comprimento da circuferência.
A= %pi*(R^2);                                             //Área da circuferência

//13 Questão

D= input('Digite o valor de dias =');                     //O usuário fornece o número de dias
Horas= D*24;                                              //1 dia equivale a 24 horas
Minutos= Horas*60;                                        //1 hora equivale a 60 minutos
Segundos= Minutos*60;                                     //1 minuto equivale a 60 segundos

//14 Questão
x1= input('Digite o valor de x1 =')                       //O usuário fornece o valor de x1
x2= input('Digite o valor de x2 =')                       //O usuário fornece o valor de x2
y1= input('Digite o valor de y1 =')                       //O usuário fornece o valor de y1
y2= input('Digite o valor de y2 =')                       //O usuário fornece o valor de y2

distancia= sqrt(((x1 - x2)^2) + ((y1 - y2)^2));           //Distância entre dois pontos.
m= (y2 - y1)/(x2 - x1);                                   //Coeficiente angular(m) da reta.

//15 Questão
v= input('Digite o valor do vetor v em hh/mm/ss =');      //O usuário fornece o valor do vetor em hh/mm/ss.
hh= [10*v(1,1) + v(1,2)];                                 //Horas dadas pelo usuário.
mm= [10*v(1,3) + v(1,4)];                                 //Minutos dados pelo usuário.
ss= [10*v(1,5) + v(1,6)];                                 //Segundos dados pelo usuário.

Vm= (hh*60) + mm + (ss/60);                               //Converte hh/mm/ss em minutos.


//16 Questão
n= 4:2:24;                                                      //Vetor linearmente espaçado de 2 unidades no intervalo fechado de 4 a 24 meses.
Valor= 10^5;                                                    //Valor total do empréstimo.
Taxa= 4/100;                                                    //Taxa de Juros.

Parcela= Valor.*((((1 + Taxa).^n).*Taxa)./(((1 + Taxa).^n)-1));       //Parcelas Fixas.

//17 Questão
Valor2= 5*(10^5);                                                    //Valor total do empréstimo.
Taxa2= 5.5/100;                                                       //Taxa de Juros.

Parcela2= Valor2.*((((1 + Taxa2).^n).*Taxa2)./(((1 + Taxa2).^n)-1));  //Parcelas Fixas.
