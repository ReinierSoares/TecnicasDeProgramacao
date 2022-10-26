//1 Questão

A=[10 52 77; 10 23 31; 70 80 66];                                        // Matriz A
B=[55 0 10; 99 0 81; 30 0 61];                                           // Matriz B
C= A+B;
D= A-B;
E= A*B;
F= A.*B;
G= A/B;
H=[A(1,1)+B(1,3);A(2,1)+B(2,3);A(3,1)+B(3,3)];                          // Adição 1 coluna de A e 3 coluna de B
I=[A(2,1) - B(1,1); A(2,2) - B(1,2); A(2,3)- B(1,3)];                   // Subtração da 2 linha de A e a 1 linha de B
J= det(A);                                                              // Determinante de A
K= det(B);                                                              // Determinante de B
L= inv(A);                                                              // Inversa de A
M= inv(B);                                                              // Inversa de B

