m1=[1:3;4:6;7:9];
m2=[10:12;13:15;16:18];
m3=[10:12;13:15;16 17 1];

%Multiplicação de matriz por um escalar
2*m1
% % Outra forma
2.*m1

%Multilpicação de matrizes
m2*m1

%Multilpicação de matrizes entrada por entrada
m2.*m1
m1.*m2

%'Divisão' de matrizes entrada por entrada
m2./m1  % Divide as entradas de m2 por m1
m2.\m1  % Divide as entradas de m1 por m2
% % Pode 'dividir' por escalar tbm
3./m1  %Cria um matriz com 3 nas entradas e divide as entradas dessa matriz por m1

% Elevando entrada a entrada
a=[1:3;1:3;1:3] %Cuidado ao botar um matriz com valores muito grandes
m1.^a
% % Usando um escalar
m1.^2

%Achando inversa
m3_1=inv(m3)
m3_1*m3
% % Outra forma
m3_1_2=eye(3)/m3
m3*m3_1_2

%Calculando determinate
det(m3)

%Traço de uma matriz
trace(m1)

%Matriz transposta
transpose(m1)
% % Outra forma
m1'

%Autovalor e autovetor
eig(m1) %Da o autovalores
[V,D] = eig(m1) %Tem os autovalores(D) e autovetor(V)
inv(V)*m1*V






