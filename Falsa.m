funcao = @(x)x^2+x-6;
%funcao = @(x)x^3-9*x+3;
a = 1;b = 3;erro = 10^(-5);
xi1 = (a*funcao(b)-b*funcao(a))/(funcao(b)-funcao(a));
cont=1; fxi1=funcao(xi1);
if funcao(b)*fxi1>=0
    xi=a;
else
    xi=b;
end

stop = parada_falsa(erro,xi, xi1, fxi1);
while stop== 0;
    x = (xi*funcao(xi1)-xi1*funcao(xi))/(funcao(xi1)-funcao(xi));
    if funcao(x)*funcao(xi1)>=0
            xi1=x; xi=xi;
    else funcao(x)*funcao(xi)>0
            xi=x; xi1=xi1;
    end
    fxi1=funcao(xi1);
    if fxi1==0
        break
    end
    stop = parada_falsa(erro,xi, xi1, fxi1);
    cont=cont+1   
end
       
fprintf('Raiz da funcao �  %1.9f e foram feitas %1.0f interacoes',[xi1,cont])
        