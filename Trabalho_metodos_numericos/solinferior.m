% % solinferior.m
function [solucao] = solinferior(A,b)

[numlin, numcol]=size(A);
X=zeros(numlin,1); % so preenchendo a matriz X poderia ser qualquer coisa
X(1,1) = b(1,1)/A(1,1);

for ii=2:numlin
    soma=0;
    for jj=1:(ii-1)
        soma = soma+A(ii,jj)*X(jj);
    end
    X(ii,1) = (b(ii,1)-soma)/A(ii,ii);
end
solucao = X;
end

