% Ester programa calcula a soma de todos os numeros de 1 ate N
% % No matlab pode usar o comando input
N=100; soma=0;
for ii=1:N
    soma=soma+ii;
end

% Outro problema com a funcao somatorio
% % Quero guardar os s
N=100; soma=0;vec=[1,N];
for ii=1:N
    soma=soma+ii;
    vec(ii,1)=soma;
end

% % Outra forma
N=100; soma=0;
for ii=1:N
    soma=soma+ii;
    vec(ii)=soma;
end

soma

figure(1),plot(vec),grid
close all