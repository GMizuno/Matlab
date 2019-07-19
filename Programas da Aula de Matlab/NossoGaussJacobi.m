%Resolve Sistema linear por Gauss-Jacobi
clear
load MatrizA
[lin,col]=size(A);
xaux=zeros(lin,1); %vetor k_k+1
x=ones(lin,1)*500; %chute inicial pra solução (e depois x é vetor x_k).
tol1=3e-11;
tol2=3e-11;
nummaxit=14;
dif1(1)=tol1+1;
dif2(1)=tol2+1;
cont1=0;
% while (dif1(cont1+1)>tol1 || dif2(cont1+1)>tol2) && cont1<nummaxit
while dif1>tol1 && cont1<nummaxit || dif2>tol2 && cont1<nummaxit
    for ii=1:lin
        Fat1=A(ii,:)*x-A(ii,ii)*x(ii);
        xaux(ii)=(b(ii)-Fat1)/A(ii,ii);
    end
    dif1=max(abs(xaux-x));
    dif2=max(abs(A*xaux-b));
    x=xaux;
    cont1=cont1+1;
end

%Teste da sentenca do while
cont1=0;
a=0;
if dif1>tol1 && cont1<nummaxit || dif2>tol2 && cont1<nummaxit
    a=1;
end
