funcao = inline('x^2+x-6','x');
menor = 1;maior = 6;erro = 10^(-5);
xi1 = (a*funcao(b)-b*funcao(a))/(funcao(b)-funcao(a));
cont=1; fxi1=funcao(xi1);
if funcao(b)*fxi1>0
    xi=a;
else
    xi=b;
end

stop = parada_falsa(erro,xi, xi1, fxi1);
while stop=="False";
    x = (xi*funcao(xi1)-xi1*funcao(xi))/(funcao(xi1)-funcao(xi));
    if funcao(x)*funcao(xi1)>=0
            xi1=x; xi=xi;
    else funcao(x)*funcao(xi)>0
            xi1=x; xi=xi;
    end
    fxi1=funcao(xi1);
    if fxi1==0
        break
    end
    stop = parada_falsa(erro,xi, xi1, fxi1);
    cont=cont+1   
end
       
fprintf('Raiz da funcao é  %1.9f e foram feitas %1.0f interacoes',[xi1,cont])
        