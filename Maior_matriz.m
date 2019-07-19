% Este programa acha o maior elemento em modulo de uma matriz

A = randi([-100, 1], [10,8]);
[numlin, numcol] = size(A);
maior = A(1,1);

for ii = 1:numlin
    for jj = 1:numcol
        if abs(A(ii,jj))>maior
            maior = A(ii,jj);
        end
    end
end
