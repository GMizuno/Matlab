% Este programa de integração numérica aproxima a integral de uma função
% utilizando a Regra do Trapézio composta (subdivido o intervalo de
% integração original em vários subintervalos e aplico a regra do trapézio
% em cada um deles)
clear
a=-10;
b=25;
N=100; % numero de subintervalos para a integração
soma=0;
passo=(b-a)/N; % Aqui está implícito que todos os subintervalos são do mesmo tamanho.
tic 
for ii=a:passo:b-passo
    f1=ii^2; % f(x), note que está implícito aqui que a função que estamos integrando é x^2
    f2=(ii+passo)^2; % f(x+1), note que está implícito aqui que a função que estamos integrando é x^2
    soma=soma+(f1+f2)*passo/2;
end
toc
%Resultado Analítico
ResAnalitico=b^3/3-a^3/3;

% Vendo o erro
soma - ResAnalitico;

% Resolvendo sem usar laços!
v2=ones(N,1)*passo/2; % Aqui eu crio um vetor coluna com todas as entradas iguais ao passo/2
tic
vetx1=(a:passo:b-passo).^2;
vetx2=(a+passo:passo:b).^2;
v1=vetx1+vetx2; % vetor linha com os termos correspondentes as bases dos trapézios
soma2=v1*v2;
toc