function [A] = simetrica(n, a, b)
% simetrica retorna uma matriz simetrica cuja entradas são numeros entre a
% e b
A = zeros(n,n);
rng('default');
rng(1);
entrada = randi([a, b], n);

for ii = 1:n % LINHA
    for jj = ii:n % COLUNA     
        A(ii,jj) = entrada(ii,jj);
        A(jj,ii) = entrada(ii,jj);
    end
end

