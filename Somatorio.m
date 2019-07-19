% Ester programa calcula a soma de todos os numeros de 1 ate N
% % No matlab pode usar o comando input
clear
N=100; soma=0;
for ii=1:N
    soma=soma+ii;
end

% Outro problema com a funcao somatorio
% % Quero guardar as somas
clear
N=100; soma=0;vec=[1,N];
for ii=1:N
    soma=soma+ii;
    vec(ii,1)=soma;
end

% % Outra forma
clear
N=100; soma=0;
for ii=N:-1:1
    soma=soma+ii;
    vec(ii)=soma;
end

% % Outro problema
% Somar as entradas de um vetor
soma = 0; vec = [1, 2, 3, 40, 100];
n = length(vec);
for ii = 1:n
    soma = soma + vec(ii);
end

figure(1),plot(vec),grid
close all