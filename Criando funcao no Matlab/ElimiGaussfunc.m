% % function[argumentos de saida] = nome da funcao(parametros de entradas)
% % nome da funcao = nome do arquivo
% % para chamar a funcao [argumentos de saida] = nome da funcao(parametros de entradas) 

function [A, b] = ElimiGaussfunc(MatAvelha,vetBvelho,coluna,numtotcol,numtotlin)
    for jj=coluna+1:numtotlin
        m=MatAvelha(jj,coluna)/MatAvelha(coluna,coluna);
        for kk=coluna:numtotcol
            MatAvelha(jj,kk)=MatAvelha(jj,kk)-m*MatAvelha(coluna,kk);
        end
        vetBvelho(jj)=vetBvelho(jj)-m*vetBvelho(coluna);
    end
   A = MatAvelha;
   b = vetBvelho;
end


