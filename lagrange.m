% Este programa realiza a interpolacao de Lagrange para n pontos
% x = [-10 -9 4 3 -7 -2 9 10 20 -3 5];
% y = [3 5 -7 8 20 15 -4 0 -9 10 10]; xnovo = 8;
x = [3.4, 3.6, 3.8];
y = [.033,.027, .022]; xnovo = 3.7;
n = length(x); L = zeros(1,n); 
P = 0;

for ii = 1:n
    numerador = 1; denominador = 1;
    for jj=1:n
        if ii ~= jj
            numerador = numerador * (xnovo - x(jj));
            denominador = denominador * (x(ii) - x(jj));
        end
    end
    L(ii) = numerador/denominador;
    P = P + y(ii)*L(ii);
end
fprintf('A aproximação pedida é %1.9f',P)
