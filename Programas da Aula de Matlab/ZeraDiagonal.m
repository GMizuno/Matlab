%Este progra zera todos os elementos da diagonal principal da matriz
%quadrada A dada.
clear;
A=[1 2 3 4;12 3 4 55;7 7 7 7;-10 -5 6 -7];
[lin,col]=size(A);
for ii=1:lin
    A(ii,ii)=0;
end
A

%outra maneira "menos esperta" de resolver.
A2=[1 2 3 4 5;12 3 4 55 -2;7 7 7 7 5;-10 -5 6 -7 5;-10 -5 6 33 33];
[lin2,col2]=size(A2);
for ii=1:lin2
    for jj=1:col2
        if ii == jj
            A2(ii,jj)=0;
        end
    end
end
A2