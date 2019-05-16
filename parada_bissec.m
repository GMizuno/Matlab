function parada_bissec = parada(erro,a,b,xi1,fxi1)
if xi1==0;
    if  (b-a)<erro && abs(fxi1)<erro;
        parada_bissec = 1 ;
    else 
        parada_bissec = 0;
    end
else
    xi1~=0;
    if (b-a)/abs(xi1)<erro && abs(fxi1)<erro;
       parada_bissec = 1;
    else
        parada_bissec = 0
    end
end
end


    

    
