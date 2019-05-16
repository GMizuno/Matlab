function parada_falsa = parada(erro,xi,xi1,fxi1)
if xi1==0;
    if  (xi1-xi)<erro && abs(fxi1)<erro;
        parada_falsa = 1;
    else 
        parada_falsa = 0;
    end
else
    xi1~=0;
    if (xi1-xi)/abs(xi1)<erro && abs(fxi1)<erro;
       parada_falsa = 1;
    else
        parada_falsa = 0;
    end
end
end


    

    
