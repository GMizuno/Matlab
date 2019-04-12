m1=[1:3;4:6;7:9];
m2=[10:12;13:15;16:18];
m3=[10:12;13:15;16 17 1];

%Multiplicação de matriz por um escalar
2*m1; 2.*m1

%Multilpicação de matrizes
m2*m1

%Multilpicação de matrizes entrada por entrada
m2.*m1

%'Divisão' de matrizes (nesse caso estou multiplicando pela inversa)
m2./m1
m2.\m1
eye(3)./m1

%Pode 'dividir' por escalar tbm
3./m1

%Achando inversa
m3_1=inv(m3)
m3_1*m3

%Calculando determinate
det(m3)

%Traço de uma matriz
trace(m1)

%Matriz transposta
transpose(m1)

%Autovalor e autovetor
eig(m1) %Da o autovalores
[V,D] = eig(m1) %Tem os autovalores(D) e autovetor(V)






