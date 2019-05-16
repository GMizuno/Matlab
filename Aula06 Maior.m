% Este progrma leva o elemento de maior modulo de um vetor para a posicao 
% inicial deste vetor, atraves de uma permutacao simples entre dois
% elementos

% Este progrma leva o elemento de maior modulo de um vetor para a posicao 
% inicial deste vetor, atraves de uma permutacao simples entre dois
% elementos

% 1 soluçao
vet1=[1 5 -10 100 44 -55 67 68 90 120 312];
len=length(vet1); 
maior=abs(vet1(1));
for ii=2:len
    if abs(vet1(ii))>maior
        maior=abs(vet1(ii));
        posicao=ii;
    end 
end
vet1(posicao)

% 2 soluçao
vet1=[1 5 -10 100 44 -55 67 68 90 120 312];
len=length(vet1);
maior=abs(vet1(1));
for ii=2:len
    if abs(vet1(ii))>maior
        posicao=ii;
    end 
end
vet1(posicao)

% % Coloca em ordem os valores absolutos

vet1=[1 5 -10 100 44 -55 67 68 90 120 312];
len=length(vet1);
maior=abs(vet1(1));
for jj=1:len-1
    for ii=jj+1:len
        if abs(vet1(ii))>maior
            maior=abs(vet1(ii));
            posicao=ii;
        end 
    end
    maior=abs(vet1(ii));
    aux1=vet1(jj);
    vet1(jj)=vet1(posicao);
    vet1(posicao)=aux1;
end








