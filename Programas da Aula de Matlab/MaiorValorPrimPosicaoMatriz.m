%Este programa coloca o maior elemento (em modulo) de uma matriz na sua primeira posição
clear;
M=[-10 3 44 100 -33 -99 301 72 44 -7
    1 2 3 4 5 6 7 8 9 10
    0 2 3 4 5 5 -9 -9 -9 -9
    -22 -77 -44 32 31 100 1 1 0 0
    0 6 0 33 0 -500 8 22 5 -4];
M
[numlin,numcol]=size(M);
maiormodulo=0;
posicaolin=0;
posicaocol=0;
for ii=1:numlin
    for jj=1:numcol
        if abs(M(ii,jj))>maiormodulo
            maiormodulo=abs(M(ii,jj));
            posicaolin=ii;
            posicaocol=jj;
        end
    end
end
aux2=M(1,1);
M(1,1)=M(posicaolin,posicaocol);
M(posicaolin,posicaocol)=aux2;
M