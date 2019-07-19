% Esse programa resolve um sistema completo usando o metodo de gauss com
% pivotiamento parcial

A=[ 1 4 -5 -8 -40 12
    3 -3 45 6 60 -9
    1 2 4 6 9 -4
    20 30 5 -6 -10 -4
    3 9 16 28 -4 -40
    -10 -4 -35 2 10 20];

% definindo b
b=transpose([1 3 5 7 -10 -30]);

[numlin,numcol]=size(A);
% definindo x
x=zeros(numlin,1);

% Solucao original
soloriginal=A\b;

for ii=1:numcol-1
% % Achando o Pivo.
    maior = abs(A(ii,ii));
    posicao = ii;
    for jj=ii+1:numlin
        if abs(A(jj,ii))>maior
            maior=abs(A(jj,ii));
            posicao=jj;
        end 
    end
% % Trocando a ordem seguindo o pivo 
    auxA = A(ii,:);
    A(ii,:) = A(posicao,:);
    A(posicao,:)=auxA;
    auxb = b(ii);
    b(ii) = b(posicao);
    b(posicao)=auxb;
% % Triagularizando a matriz A
% % Nesse for evita fazer contas do tipo 0-0
    for jj=ii+1:numlin
        m=(A(jj,ii)/A(ii,ii));
        for kk=ii:numcol
            A(jj,kk)=A(jj,kk)-m*A(ii,kk);           
        end
    b(jj)=b(jj)-m*b(ii);
    end 
end

solfinal = A\b

solfinal - soloriginal