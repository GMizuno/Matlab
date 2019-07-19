%SubstituicaoRegressiva
clear;
A=[1 2 3 4 5 6
   0 -4 -7 33 22 -10
   0 0 5 6 50 -30
   0 0 0 9 4 -1
   0 0 0 0 4 -20
   0 0 0 0 0 7];
[lin,col]=size(A);
b=[80; 82; 83; 87; 92; 9];
x= zeros(lin,1);
x(lin)=b(lin)/A(lin,lin);
for ii=lin-1:-1:1
    Fat1=0;
    for jj=lin-1:-1:ii
        Fat1=Fat+A(ii,jj+1)*x(jj+1);
    end
    x(ii)=(b(ii)-Fat1)/A(ii,ii);
end

x
xconfirmacao=A\b

%Algoritmo Alternativo
x2=zeros(lin,1);
for ii=lin:-1:1
    Fat1=A(ii,:)*x2
    x2(ii)=(b(ii)-Fat1)/A(ii,ii);
end