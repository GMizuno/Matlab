%Este programa resolve sistemas lineares pelo método de Gauss-Seidel
clear
A=[100 4 -5 -8 -40 12
    3 -130 45 6 60 -9
    1 2 40 6 9 -4
    20 30 5 -260 -10 -4
    3 9 16 28 -400 -40
    -10 -4 -35 2 10 208];
b=[1;3;5;7;-10;-30];
[numlin,numcol]=size(A);
x=zeros(numlin,1);
epsilon=1e-6;
epsilon2=1e-6;
nummaxit=100;
d=epsilon+1;
d2=epsilon2+1;
it=0;
Matx(:,1)=x;
while (d>epsilon && it<nummaxit)||(d2>epsilon2 && it<nummaxit)
    x0=x;
    for ii=1:numlin
        Fat=0;
        for jj=1:numcol
            if ii~=jj
                Fat=Fat+A(ii,jj)*x(jj);
            end
        end
        x(ii)=(b(ii)-Fat)/A(ii,ii);
    end
    d=max(abs(x-x0));
    d2=max(abs(A*x-b));
    it=it+1;
    Matx(:,it+1)=x;
end