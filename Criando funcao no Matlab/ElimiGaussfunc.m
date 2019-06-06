% % function[argumentos de saida] = nome da funcao(parametros de entradas)
% % nome da funcao = nome do arquivo
% % para chamar a funcao [argumentos de saida] = nome da funcao(parametros de entradas) 

function [A,b] = ElimiGaussfunc(A,b,col,numtotlin,numtotcol)
for jj=col+1:numtotlin
    m=A(jj,col)/A(col,col);
    for kk=col:numtotcol
        A(jj,kk)=A(jj,kk)-m*A(col,kk);
    end
    b(jj)=b(jj)-m*b(col);
end


