% Este programa realiza a interpolacao de Lagrange para n pontos

x = [-10 -9 4 3 -7 -2 9 10 20 -3 5];
y = [3 5 -7 8 20 15 -4 0 -9 10 10];
n = length(x); xnovo = 7; L = zeros(1,n); 
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

% % Tentar fazer o grafico dos pontos !!!!!!!!!!!!!!!!!!