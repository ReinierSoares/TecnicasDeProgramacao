                          //4 Questão                                                 
clc
clear

function vetor(x)
    Tol = 0.000001
    xo = 1
    fx=((xo^2)- x);

while abs(fx) > Tol
    xo = xo - ((fx)/(2*xo))
end
return xo
endfunction

y=0;
 x = input("Raíz de: ")
disp('Pela Aplicação do método de Newton a Raíz é: ',vetor(x));



