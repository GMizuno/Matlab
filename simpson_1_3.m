% Este programa de integra��o num�rica aproxima a integral de uma fun��o
% utilizando a Regra 1/3 de Simpson repetida
a = 0; b = 1; m = 3;
h = (b - a)/(2*m);
funcao = @(x)exp(x);
xi = zeros(1, 2*m+1);
for ii = 0:2*m
    xi(1, ii+1) = a + ii*h; 
end

f = zeros(1, 2*m+1);
f(1,1) = funcao(xi(1,1)); f(1,2*m+1) = funcao(xi(1,2*m+1));

for ii = 2:2*m
    if rem(ii,2) == 1
        f(1,ii) = 2*funcao(xi(1,ii));
    else
        f(1,ii) = 4*funcao(xi(1,ii));
    end
end

f = f.*(h/3);

sum(f)