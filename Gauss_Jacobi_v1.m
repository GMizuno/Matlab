%Este programa resolve sistemas lineares pelo método de Gauss-Jacobi
clear
A=[100 4 -5 -8 -40 12
    3 -130 45 6 60 -9
    1 2 40 6 9 -4
    20 30 5 -260 -10 -4
    3 9 16 28 -400 -40
    -10 -4 -35 2 10 208];
b=[1;3;5;7;-10;-30];
[numlin,numcol]=size(A);
x0=zeros(numlin,1);
epsilon=1e-6;
epsilon2=1e-6;
nummaxit=100;
d=epsilon+1;
d2=epsilon2+1;
it=0;
Aaux=A-diag(diag(A));
%Primeira solução (onde eu faço contas que eu sei que dará 0%%%%%%%%%%%%%%
tic
while (d>epsilon && it<nummaxit)||(d2>epsilon2 && it<nummaxit)
    x=(b-Aaux*x0)./diag(A);
    d=max(abs(x-x0));
    d2=max(abs(A*x-b));
    x0=x;
    it=it+1;
end
toc
%Segunda solução (não faço contas desnecessárias. Faço "timtim por timtim")
x0b=zeros(numlin,1);
xb=zeros(numlin,1);
db=epsilon+1;
d2b=epsilon2+1;
itb=0;
tic
while (db>epsilon && itb<nummaxit)||(d2b>epsilon2 && itb<nummaxit)
    for ii=1:numlin
        Fat=0;
        for jj=1:numcol
            if ii~=jj
                Fat=Fat+A(ii,jj)*x0b(jj);
            end
        end
        xb(ii)=(b(ii)-Fat)/A(ii,ii);
    end
    db=max(abs(xb-x0b));
    d2b=max(abs(A*xb-b));
    x0b=xb;
    itb=itb+1;
end
toc