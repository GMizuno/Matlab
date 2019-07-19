%Este programa realiza a eliminação Gaussiana em uma matriz n x n
clear;
A=[9 19 13 14 -30 16 26 8
    80 82 83 87 92 9 17 18
    -2 -5 88 40 -7 -100 7 78
    1 3 5 7 9 10 -20 -30
    5 6 7 5 66 -34 -32 -45
    10 9 5 4 -3 -7 -23 6
    -90 -80 33 44 55 66 38 22
    4 9 13 50 -30 -20 -9 100];
b=[15;13; 14; 10; 66; 17; 18; 20];
SolMatlab=A\b
[lin,col]=size(A);
for ii=1:col-1
    for jj=ii+1:lin
        b(jj)=b(jj)-(A(jj,ii)/A(ii,ii))*b(ii);
        A(jj,:)=A(jj,:)-(A(jj,ii)/A(ii,ii))*A(ii,:);
%         pause
    end
end
NossaSol=A\b
save MatrizA A b