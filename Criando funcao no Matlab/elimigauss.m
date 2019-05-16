%Este programa transforma sistemas lineares cheios (densos) em sistemas
%triangulares superiores equivalentes utilizando Eliminação Gaussiana sem
%pivoteamento
Aoriginal=[1 4 -5 -8 -40 12
    3 -3 45 6 60 -9
    1 2 4 6 9 -4
    20 30 5 -6 -10 -4
    3 9 16 28 -4 -40
    -10 -4 -35 2 10 20];
boriginal=transpose([1 3 5 7 -10 -30]);

soloriginal=Aoriginal\boriginal;

[numlin,numcol]=size(Aoriginal);
x=zeros(numlin,1);
A1=Aoriginal;
b1=boriginal;
tic
for ii=1:numcol-1
    for jj=ii+1:numlin
        m=A1(jj,ii)/A1(ii,ii);
        A1(jj,:)=A1(jj,:)-m*A1(ii,:);
        b1(jj)=b1(jj)-m*b1(ii);
    end
end
toc
sol1=A1\b1;

%Algoritmo alternativo (não faço contas redundantes que eu sei que vai dar
%zero)
A2=Aoriginal;
b2=boriginal;
tic
for ii=1:numcol-1
    for jj=ii+1:numlin
        m=A2(jj,ii)/A2(ii,ii);
        for kk=ii:numcol
            A2(jj,kk)=A2(jj,kk)-m*A2(ii,kk);
        end
        b2(jj)=b2(jj)-m*b2(ii);
    end
end
toc
sol2=A2\b2;