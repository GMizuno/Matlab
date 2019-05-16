%Este programa leva o elemento de maior módulo de um vetor para a posição
%inicial deste vetor, através de uma permutação simples entre dois
%elementos
clear
vet1=[1000 5 -10 100 44 -55 67 68 90 120 32]
len=length(vet1);
maior=abs(vet1(1));
posicao=1;
for ii=2:len
    if abs(vet1(ii))>maior
        maior=abs(vet1(ii));
        posicao=ii;
    end
end
if posicao~=1
    aux1=vet1(1);
    vet1(1)=vet1(posicao);
    vet1(posicao)=aux1;
end
vet1

%Solução alternativa
vet1=[-5 5 -10 100 44 -55 67 68 90 120 32]
posicao=1;
for ii=2:len
    if abs(vet1(ii))>abs(vet1(posicao))
        posicao=ii;
    end
end
aux1=vet1(1);
vet1(1)=vet1(posicao);
vet1(posicao)=aux1;
vet1        