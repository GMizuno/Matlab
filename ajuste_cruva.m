% Este programa determina o polinomio de grau n por uma nuvem de pontos
% dados utilizando o metodo dos Minimos Quadrado (MQO).

% x = [-10 -9 4 3 -7 -2 9 10 20 -3 5];
% y = [3 5 -7 8 20 15 -4 0 -9 10 10];

x = [-4 -2 0 2]
y = [.11 .16 .2 .25]
m = length(x); n = 1; % grau
vettermosA = zeros(1,2*n); % Contem o os somatorios comecando com o x, x^2, x^3 ..., x^2n 

A = zeros(n + 1, n + 1); % Inicializando a matriz A
b = zeros(n+1,1); % Inicializando a matriz b

% % Aqui preencho vetor vettermosA
for ii = 1:m % loop relativo ao somatorio, olhando para o X
    for jj = 1:2*n % loop para calcular cada termo, preenchendo o vettermosA
        vettermosA(jj) = vettermosA(jj) + x(ii)^jj;
    end
end

% % Aqui preencho vetor b
for ii = 1:m % loop relativo ao somatorio, olhando para o X e Y
    for jj = 1:n+1 % loop para calcular cada termo, preenchendo o b
        b(jj) = b(jj) + y(ii)*x(ii)^(jj-1);
    end
end

% %  Motando matriz A
A(1,1) =  m; 
A(1,2:n+1) = vettermosA(1,1:n);

for ii = 2:n+1
    A(ii,:) = vettermosA(1,ii-1:ii+n-1);
end

% % Achando so coeficientes
c = A\b;

% % Plotando 
xaux = min(x):0.01:max(x);
nxaux = length(xaux);
yaux = zeros(1, nxaux);

for ii = 1:n+1
    yaux = yaux + c(ii)*xaux.^(ii-1);
end

plot(xaux, yaux,'-r', x, y, 'o')
