% Este progrma leva o elemento de maior modulo de um vetor para a posicao 
% inicial deste vetor, atraves de uma permutacao simples entre dois
% elementos

% 1ª soluçao
clear
vet1 = [1 5 -10 100 44 -55 67 68 90 120 312];
len = length(vet1); 
maior = abs(vet1(1));
for ii = 2:len
    if abs(vet1(ii)) > maior
        maior=abs(vet1(ii));
        posicao=ii;
    end 
end
vet1(posicao)

% % Coloca em ordem os valores absolutos
clear
vet1=[10 5 -10 100 44 -55 67 68 90 120 312];
len=length(vet1); posicao=1;
maior=abs(vet1(1));
for ii = 2:len
    if abs(vet1(ii))>maior
        maior=abs(vet1(ii));
        posicao=ii;
    end 
end
if posicao~=1
    aux1=vet1(1);
    vet1(1)=maior;
    vet1(posicao)=aux1;
end
vet1

% 2ª Solucao
clear
vet1=[1000 5 -10 100 44 -5500 67 68 90 120 312];
len=length(vet1); posicao=1;
for ii=2:len
    if abs(vet1(ii))>abs(vet1(posicao))
        posicao=ii;
    end
end
aux1=vet1(1);
vet1(1)=vet1(posicao);
vet1(posicao)=aux1;
vet1       







