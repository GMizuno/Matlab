% x = [-10 -9 4 3 -7 -2 9 10 20 -3 5];
% y = [3 5 -7 8 20 15 -4 0 -9 10 10]; ponto = 8;
x = [2.4, 2.6, 2.8];
y = [11.02, 13.46, 16.44]; ponto = 2.5;
n = length(x); D = zeros(n,n);
D(:,1) = y;
for ii = 2:n
    for jj=1:n+1-ii
        num = D(jj+1,ii-1) - D(jj,ii-1);
        dem = x(jj + ii - 1) - x(jj);
        D(jj,ii) = num/dem;
    end
end

% % criando um matriz com os ponto x-x1, (x-x1)(x-x2), ...,
% % (x-x1)...(x-xn-1)
matriz = zeros(1,n-1);

for ii = 1:n-1
    produto = 1;
    for jj = 1:ii
        produto = produto*(ponto-x(jj));
    end
    matriz(1,ii) = produto;
end
p_xnovo = y(1) + dot(D(1,2:n), matriz);
D(1,:)

fprintf('A aproximação pedida é %1.9f',p_xnovo)