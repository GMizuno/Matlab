% Este programa de integra��o num�rica aproxima a integral de uma fun��o
% utilizando a Regra do Trap�zio composta (subdivido o intervalo de
% integra��o original em v�rios subintervalos e aplico a regra do trap�zio
% em cada um deles)
clear
a=-10;
b=25;
N=100; % numero de subintervalos para a integra��o
soma=0;
passo=(b-a)/N; % Aqui est� impl�cito que todos os subintervalos s�o do mesmo tamanho.
tic 
for ii=a:passo:b-passo
    f1=ii^2; % f(x), note que est� impl�cito aqui que a fun��o que estamos integrando � x^2
    f2=(ii+passo)^2; % f(x+1), note que est� impl�cito aqui que a fun��o que estamos integrando � x^2
    soma=soma+(f1+f2)*passo/2;
end
toc
%Resultado Anal�tico
ResAnalitico=b^3/3-a^3/3;

% Vendo o erro
soma - ResAnalitico;

% Resolvendo sem usar la�os!
v2=ones(N,1)*passo/2; % Aqui eu crio um vetor coluna com todas as entradas iguais ao passo/2
tic
vetx1=(a:passo:b-passo).^2;
vetx2=(a+passo:passo:b).^2;
v1=vetx1+vetx2; % vetor linha com os termos correspondentes as bases dos trap�zios
soma2=v1*v2;
toc