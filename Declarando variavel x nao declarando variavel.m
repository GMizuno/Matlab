% Este programa testa o tempo de preenchimento de um vetor
clear
tic
for ii=1:1e6
    vet1(ii)=1;   
end
toc

clear; n=1e8;
vet2=zeros(1,n);
tic
for ii=1:n
    vet2(ii)=1;
end
toc

% % MORAL DO PROGRAMA INICIALIZE AS VARIAVEIS