% % solsuperior.m
function [solucao] = solsuperior(A,b)

[numlin, numcol]=size(A);
X=zeros(numlin,1); % so preenchendo a matriz X poderia ser qualquer coisa
X(numlin,1) = b(numlin,1)/A(numlin,numcol);

% % Na primeira rodada, quando ii = numlin, temos que jj = numlin:numcol-1
% % o jj sera um vetor vazio e por isso o matlab pula
for ii=numlin:-1:1
    soma=0;
    for jj=ii:(numcol-1)
        soma = soma+A(ii,jj+1)*X(jj+1);
    end
    X(ii,1) = (b(ii,1)-soma)/A(ii,ii);
end
solucao = X;
end

