x = input ('Digite  uma conversão de: 1- dec para Bin ; 2- dec para Hex; 3-dec para Oct; 4- Bin para dec; 5 - Octa para dec; 6 - Hex para Dec ')


z= zeros ;

switch x
case 1
    y= input ('Digite um Valor para ser convertido na opção que escolheu: ')
    z= dec2bin(y)
case 2
    y= input ('Digite um Valor para ser convertido na opção que escolheu: ')
    z= dec2hex(y)
case 3
    y= input ('Digite um Valor para ser convertido na opção que escolheu: ')
    z= dec2oct (y)
case 4
   str= input ('Digite um Valor para ser convertido na opção que escolheu: ') ;
    z=bin2dec(str)
case 5
    str = input ('Digite um Valor para ser convertido na opção que escolheu: ')
    z= oct2dec(str)
case 6
    str = input ('Digite um Valor para ser convertido na opção que escolheu: ')
    z= hex2dec([str])
otherwise
    disp('O Valor é diferente dos apresentados!');
end
    disp(z)
