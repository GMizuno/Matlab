% % function[argumentos de saida] = nome da funcao(parametros de entradas)
% % nome da funcao = nome do arquivo
% % para chamar a funcao [argumentos de saida] = nome da funcao(parametros wde entradas) 

% Este programa resolve um sistema completo por eliminacao gaussiana com
% pivoteamento parcial utilizando o conceito de funcoes. Ele chama as
% funcoes ElimiGauss.m, PivotParcfunc.m e resolvetriangsupfunc.m

% % dica: Nesse caso nao usar nao usar clear na primeira linha de entrada
A = [1 4 -5 -8 -40 12
    3 -3 45 6 60 -9
    1 2 4 6 9 -4
    20 30 5 -6 -10 -4
    3 9 16 28 -4 -40
    -10 -4 -35 2 10 20];

b = transpose([1 3 5 7 -10 -30]);
[numlin, numcol] = size(A);
Anovo=A;bnovo=b;
for ii=1:numcol-1
    [Aordenado,Bordenado] = PivotParcfunc(Anovo,bnovo,ii,numlin);
    [Anovo,bnovo] = ElimiGaussfunc(Aordenado,Bordenado,ii,numlin,numcol);
end

[Sol] = resolve_traing_supfun(Anovo,bnovo,numlin,numcol)

Sol-A\b
