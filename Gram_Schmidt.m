% Esse programa executa o processo de Gram-Schmidt

%  Preencha as linhas e dps coloque o transpose para deixar tudo em linh
base = transpose([3, 1
    2, 2]);

% S = {v1, v2, ..., vn} sera uma matriz em q cada coluna sera um vetor S
% e S sera uma base ortogonal

[n, x]  = size(base);
S = zeros(n,n);

S(:,1) = base(:,1);

for ii = 2:n
    s = base(:,ii);
    for jj = 1:ii-1
        [num, den] = prod_escalar_mod(S(:,jj),base(:,ii));
        s = s - (num/den) * S(:,jj);
    end
    S(:,ii) = s;
end

N = S.^2;
Snormal = zeros(n,n);
for ii = 1:n
    Snormal(:,ii) = S(:,ii)./sqrt(sum(N(:,ii)));
end



        