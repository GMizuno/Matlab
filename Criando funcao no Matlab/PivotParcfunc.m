function [A,b] = PivotParcfunc(A,b,col,numlin)
    maior=abs(A(col:col));
    posicao=col;
    for ii=col+1:numlin
        if abs(A(ii,col))>maior
            maior=abs(A(ii,col));
            posicao=ii;
        end
    end
    auxLin=A(col,:);
    A(col,:)=A(posicao,:);
    A(posicao,:)=auxLin;
    
    auxLin=b(col);
    b(col)=b(posicao);
    b(posicao)=auxLin;
end

