% Este programa ensina a gerar numeros aletorios com ALGUMAS distribuições

% X~U(0,1)
rand(1) 
rand(2)

% % Criando um matriz com X~U(0,1)
rand(5)

% % Criando um vetor com X~U(0,1)
rand(5,1)

% % X~U(-10, 10)
-10 + (10+10)*rand(1,1)
% % % forma geral, a + (b-a).*rand(N,1), onde X~U(a,b)
-10 + (10+10)*rand(5)
-10 + (10+10)*rand(5, 1)

% Gernando numeros inteiros entre 0 e 20
randi([0 20],1)
randi([0 20],5)
randi([0 20],5 ,1)
randi([0 20],1 ,5)

% X~N(0, 1)
randn(1)
randn(2)
randn(5, 1)

% % X~Np(mu, sigma)
mu = [1; 2]; mu
sigma = [1 0.5; 0.5 2]; sigma
% % Para achar temos que usar o seguinte teorema X = Az + mu, onde sigma =
% % A*At e Z é um vetor de normal padrao
A = chol(sigma); A
X = A*rand(2, 1) + mu; X
% % mvnrnd(mu,sigma,10) esse modo mais direto tem q pagar para ter

% % % TESTANDO, MAS NAO SEI SE ESTA CERTO
S1 = 0; S2 = 0; n = 100000;
for ii = 1:n
   X = A*randn(2, 1) + mu;
   S1 = S1 + X(1, 1);
   S2 = S2 + X(2, 1);
end

S1/n
S2/n

