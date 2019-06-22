% Este programa determina o polinomio de grrau n por uma nuvem de pontos
% dados utilizando o metodo dos minimos quadrado

x = [-10 -9 4 3 -7 -2 9 10 20 -3 5];
y = [3 5 -7 8 20 15 -4 0 -9 10 10];
m = length(x); n = 1; % grau
vettermosA = zeros(1,2*n);
vettermosb = zeros(1,n+1);

for ii = 1:n % loop relativo ao somatorio
    for jj = 1:2*n % loop para calcular cada termo
        vettermosA(ii) = vettermosA(ii) + x(ii)^jj;
    end
end

    