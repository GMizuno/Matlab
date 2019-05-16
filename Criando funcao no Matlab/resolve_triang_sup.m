%Este programa resolve sistemas triangulares superiores por Substituição
%Regressiva
clear
A=[1 -2 50 -40 4
    0 3 22 -9 -90
    0 0 3 2 1
    0 0 0 4 20
    0 0 0 0 -30];
b=[1;4;-7;-10;9];
[numlin,numcol]=size(A);
x=zeros(numlin,1);
for ii=numlin:-1:1
    soma=0;
    for jj=ii:numcol-1
        soma=soma+A(ii,jj+1)*x(jj+1);
    end
    x(ii)=(b(ii)-soma)/A(ii,ii);
end
x-A\b