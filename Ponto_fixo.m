funcao = @(x)x^3-9*x+3;
funcaoint = @(x)(1/9)*(x^3+3);
x0 = 2;erro = 10^(-5);cont=1
xi1 = funcaoint(2);fxi1 = funcao(xi1);
stop = parada_ponto_fixo(erro,x0,xi1,fxi1);
while stop == 0;
    xi = xi1;
    xi1 = funcaoint(xi);
    fxi1 = funcao(xi1);
    stop = parada_ponto_fixo(erro,xi,xi1,fxi1);
    cont=cont+1
end
xi1

fprintf('Raiz da funcao é  %1.9f e foram feitas %1.0f interacoes',[xi1,cont])