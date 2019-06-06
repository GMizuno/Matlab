% % Programa para resolver sistema para uma
% % matriz triangular superior (substituição regressiva ou retrosubstituicao)
A=[1 2 3; 0 4 5; 0 0 6]; B=[1; 2; 6];

[numlin, numcol]=size(A);
X=zeros(numlin,1); % so preenchendo a matriz X poderia ser qualquer coisa
X(numlin,1)=B(numlin,1)/A(numlin,1);
for ii=numlin:-1:1
    soma=0;
    for jj=ii:(numcol-1)
        soma = soma+A(ii,jj+1)*X(jj+1);
    end
    X(ii,1) = (B(ii,1)-soma)/A(ii,ii);
end

X-A\B %Verificando se o sistema esta ok