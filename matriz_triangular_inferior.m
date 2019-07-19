% % Programa para resolver sistema para uma
% % matriz triangular inferior (substituição regressiva ou retrosubstituicao)
A=[1 0 0 0; 2 3 0 0; 1 2 5 0; 1 2 3 4]; B=[2; 3; 5; 8];

[numlin, numcol]=size(A);
X=zeros(numlin,1); % so preenchendo a matriz X poderia ser qualquer coisa
X(1,1)=B(1,1)/A(1,1);
for ii=2:numlin
    soma=0;
    for jj=1:(ii-1)
        soma = soma+A(ii,jj)*X(jj);
    end
    X(ii,1) = (B(ii,1)-soma)/A(ii,ii);
end

X-A\B % Comparando resposta