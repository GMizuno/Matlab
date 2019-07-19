%Resolve sistema linear por Gaus Sidel
clear
x=zeros(lin,1);       %chute inicial para solução
xaux=zeros(lin,1);    %vetor k_k+1
tol1=1e-6;
tol2=1e-4
dif1=tol1+1;
while dif>tol1 | max(abs(Ax-b))>tol2
for ii=1:lin
    Fat1=A(ii,:)*x-A(ii,ii)*x(ii);
    xaux(ii)=(b(ii)-Fat1)/A(ii,ii);
end
dif1=max(abs(xaux-x));
dif2=max(abs(A*xaux-b=0))
x=xaux;
end
%falta criterio de parada  e algo para quando o sistema for instavel.