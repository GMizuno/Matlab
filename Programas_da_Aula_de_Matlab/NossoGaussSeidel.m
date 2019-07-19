%Resolve Sistema linear por Gauss-Jacobi
clear
load MatrizA
[lin,col]=size(A);
x=ones(lin,1)*100; %chute inicial pra solução (e depois x é vetor x_k).
xantigo=zeros(lin,1);
tol1=1e-11;
tol2=1e-11;
nummaxit=15;
dif1=tol1+1;
dif2=tol2+1;
cont1=0;
% while (dif1(cont1+1)>tol1 || dif2(cont1+1)>tol2) && cont1<nummaxit
while dif1>tol1 && cont1<nummaxit || dif2>tol2 && cont1<nummaxit
    xantigo=x;
    for ii=1:lin
        Fat1=A(ii,:)*x-A(ii,ii)*x(ii);
        x(ii)=(b(ii)-Fat1)/A(ii,ii);
    end
    dif1=max(abs(x-xantigo));
    dif2=max(abs(A*x-b));
    cont1=cont1+1;
end