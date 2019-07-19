% Comandos importantes: comand+k(ou clc) limpa o console, clear limpa o
% hisotrico

%Sequencia de numeros seq inicio:fim
seq1 =1:10
% % Sequencia com passo seq inicio:passo:fim
seq1 =1:2:10
% % Sequencia com passo negativo
seq1=10:-2:-4
% %Criando uma sequencia de -5 ate 5 com 100 numeros igualmente espacados
linspace(-5,5)

% %Criando vetor
vetor=[1 1 2]
% % Outra forma
vetor=[1,2,3]
% % vetor com sequencia
vetor=[1:2:10]
% % vetor coluna
v=zeros(21,1)
% % Preenchendo esse vetor
v(:,1)=-10:10

% Matriz
matriz=[1:2;2:3]
% % matrizes conhecidas
identidade=eye(2)
zero=zeros(2)
um=ones(3)
m=magic(4);magic(5)
% % Acessando elementos de uma matriz
m=[1:10;11:20;21:30;31:40];
% % % Linha 1 coluna 3 (a13)
sub=m(1,3) 
% % % Linha 1
sub=m(1,:)
% % % Coluna 3
sub=m(:,3)
% % % Coluna 1 ate 3
sub=m(:,1:3)
% % % Linha 1 ate 3
sub=m(1:3,:)
% % % Da linha 1 ate 2 com coluna 1
sub=m(1:2,1)
% % % Da coluna 2 ate 4 com linha 2 (a22,a23,a24)
sub=m(2,2:4)
% % % Da linha 2 ate 4 com coluna 2 ate 5
% % % (a22,a23,a24,a25,a32,a33,a34,a35,a42,a43,a44,a45)
sub=m(2:4,2:5)
% % % Mudando valor de matriz (a11=pi)
m(1,1)=pi
% % % % Mudando as entradas a11=pi e a21=sin(pi/2)
m(1:2,1)=[pi sin(pi/2)]
% % % % Mudando as entradas a11=pi e a12=sin(pi)
m(1,1:2)=[pi sin(pi)]
% % % Diagonal de uma matriz
m1=[1:10;11:20;21:30;31:40];
diagonal=diag(m1)
% % % Matriz L sem a diagonal
L=tril(m1,-1)
% % % Matriz U sem a diagonal
U=triu(m1,1)

% Array(Matriz de ordem n)
% % NAO DA PARA CRIAR ARRAY COM EYE
% % Primeiro criamos uma matriz e dps 'botamos as camadas'
% % Todas as camadas tem o mesmo tamanho
A = [1 2 3; 4 5 6; 7 8 9];
A(:,:,2) = [10 11 12; 13 14 15; 16 17 18]
A(:,:,3) = [1:3 ; 4:6 ; 7:9]
% % Acessando uma array especifico
sub=A(:,:,1)
sub=A(:,:,1:2)
% % Trocando um array inteiro
A(:,:,1)=0
% % Trocando um elemento de uma matriz dentro do array
A(1,2,1)=pi
A(1,2,2)=exp(1)



