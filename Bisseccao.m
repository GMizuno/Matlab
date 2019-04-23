funcao = inline('x^3-9*x+3','x');
menor = 0;maior = 1;erro = 10^(-10);xi1 = (maior+menor)/2;
fxi1 = funcao(xi1);cont=1;
stop = parada_bissec(erro, menor, maior, xi1, fxi1);
while stop=="False";
    if funcao(menor)*funcao(xi1)>0
            menor = xi1;
    end
    if funcao(maior)*funcao(xi1)>0
            maior = xi1;
    end
    xi1 = (maior+menor)/2;
    fxi1 = funcao(xi1);
    if fxi1==0
        break
    end
    stop = parada_bissec(erro, menor, maior, xi1, fxi1);
    cont=cont+1;   
    xi1
    maior
    menor
end
       
fprintf('Raiz da funcao é  %1.9f e foram feitas %1.0f interacoes',[xi1,cont])
        
    