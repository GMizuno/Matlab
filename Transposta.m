% Este programa retorna a matriz At que é a matriz transposta de A
n = 1000; A = randi([0, 10], [n,n]);

[numcol, numlin] = size(A);
At = zeros(numcol);
tic
for ii = 1:numlin
    for jj = 1:numcol
        At(jj,ii) = A(ii,jj);
    end
end
toc

% Testando tempo
tic
transpose(A);
toc