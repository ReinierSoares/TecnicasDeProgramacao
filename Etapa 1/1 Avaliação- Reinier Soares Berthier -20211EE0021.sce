//                  SÉRIE DE TAYLOR PARA O CÁLCULO DE EXPONENCIAL               

clc
clear

                                                                   //Function para o fatoriaL
function x = fat(num)
    if num == 1 or num == 0
        x=1;
    else
        x= num * fat(num-1);
    end
endfunction

                                                                  //Laço de repetição para a série de Taylor para n termos
y= input('Digite a exponencial que deseja calcular: ');
n= input('Digite o Número de Termos da série: ');

s=0;
for m = 1:1:n                                                    //Somatório
        for  i = m-1;
        s= s + ((y^i) / fat(i));
    end
end
disp('O valor da exponencial pela série de Taylor é: ',s);

                                                                 //Erro de Truncamento
z= y/fat(n);
disp('o Erro de Trucamento é: ',z);


