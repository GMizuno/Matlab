% Este programa verfica se uma matriz A é positiva definida, retornando o
% retornando os determinantes das submatrizes
A = simetrica(3, 10, 30);

[numcol, numlin] = size(A);

det_sub = zeros(1, numcol);

for ii = 1:numcol
    det_sub(1,ii) = det(A(ii,ii));
end

all(det_sub) > 0 
