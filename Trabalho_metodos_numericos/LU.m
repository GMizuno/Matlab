function [L,U,P] = LU(A)
[numlin,numcol] = size(A);

P = eye(numlin); Poriginal = P;

% Apesar do programa ElimiGaussfunc nao estar usando diretamenta o
% Pivoteamento Parcial quando usado os programas PivotParcfunc.m e
% ElimiGaussfunc.m conjuntamente eles fazem o Pivoteamento.
for ii=1:(numcol)
    [A,posicao] = PivotParcfunc(A,ii,numcol);
    [A] = ElimiGaussfunc(A,ii,numcol,numlin);
    P(:,:,ii)=trocar(Poriginal,posicao,ii);
end

% Estou dividindo a matriz em L com os m e U com a matriz superior como
% resultado do pivoteamento parcial
L = tril(A,-1)+diag(diag(ones(numlin)));
U = triu(A);
end

