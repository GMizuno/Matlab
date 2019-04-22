funcao = inline('x*log10(x)-1','x');
menor = 1;maior = 5;erro = 10^(-10);xi1 = (maior+menor)/2;
fxi1 = funcao(xi1);cont=1;
stop = parada_bissec(erro, menor, maior, xi1, fxi1);
while stop=="False";
    if funcao(menor)*funcao(xi1)>0
            menor = xi1;
            xi1 = (maior+menor)/2;
    end
    if funcao(maior)*funcao(xi1)>0
            maior = xi1;
            xi1 = (maior+menor)/2;
    end
    fxi1 = funcao(xi1);
    stop = parada_bissec(erro, menor, maior, xi1, fxi1);
    cont=cont+1;
end
       
fprintf('Raiz da funcao é  %1.9f e foram feitas %1.0f interacoes',[xi1,cont])
        
    