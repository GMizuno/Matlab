% Esse programa escalona matrizes usando o metodo de Gauss sem a
% utlizadao do pivotamento parcial
% % ElimiGaussfunc.m

function [A] = ElimiGaussfunc(MatAvelha,coluna,numtotcol,numtotlin)
    linha = coluna;
    for jj=linha+1:numtotlin % Se linha + 1> numtotlin, Matlab nao 'entra' no for
        m=MatAvelha(jj,coluna)/MatAvelha(coluna,coluna);
        for kk=coluna:numtotcol
            MatAvelha(jj,kk)=MatAvelha(jj,kk)-m*MatAvelha(linha,kk); 
        end 
        % Estou guardando os m na matriz A para nao ter que criar outra
        % matriz, declarando menos variaveis.
         MatAvelha(jj,coluna)=m;
    end
    A=MatAvelha;
end


