% Esse programa troca duas linhas de uma determinada coluna de uma matriz

function [A] = trocar(A,posicao1,posicao2)
    auxLin=A(posicao2,:);
    A(posicao2,:)=A(posicao1,:);
    A(posicao1,:)=auxLin;
end

