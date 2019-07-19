%Este programa coloca o maior elemento (em modulo) de um vetor na sua primeira posição
clear;
v=[-10 3 44 100 -33 -99 301 72 44 -7 10];
v
N=length(v);
maiormodulo=abs(v(1));
posicao=1;
for ii=2:N
    if abs(v(ii))>maiormodulo
        maiormodulo=abs(v(ii));
        posicao=ii;
    end
end
aux2=v(1);
v(1)=v(posicao);
v(posicao)=aux2;
v