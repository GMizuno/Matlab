% Este programa retorna o produto cartesiano de dois conjuntos

A = [1, 2, 3];
na = length(A);
B = [1, 5];
nb = length(B);
AxB = zeros(nb, 2, na);

for ii = 1:na
    AxB(:, :, ii) = Ajuda_Prod_Cartesiano(A, B, ii);
end

Card = AxB(:, :,1);
for ii = 2:na
    Card = union(Card, AxB(:, :,ii), 'rows');
end
