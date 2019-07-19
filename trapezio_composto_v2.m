% Este programa de integra��o num�rica aproxima a integral de uma fun��o
% utilizando a Regra do Trap�zio composta (subdivido o intervalo de
% integra��o original em v�rios subintervalos e aplico a regra do trap�zio
% em cada um deles)

a = 0; b = pi/4; m = 10;
funcao = @(x)sin(x);
h = (b - a)/m;
xi = zeros(1, m);

for ii = 0:m
    xi(1, ii+1) = a + ii*h; 
end

f = zeros(1, m + 1);
f(1,1) = funcao(xi(1,1)); f(1,m + 1) = funcao(xi(1,m+1));

soma = f(1,1)*(h/2) + f(1,m + 1)*(h/2);

for ii = 2:(m)
    f(1,ii) = 2*funcao(xi(1,ii));
    soma = soma + f(1,ii)*(h/2);
end
