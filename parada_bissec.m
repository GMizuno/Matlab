function parada_bissec = parada(erro,a,b,xi1,fxi1)
if xi1==0;
    if  (b-a)<erro && abs(fxi1)<erro;
        parada_bissec ='True';
    else 
        parada_bissec ='False';
    end
else
    xi1~=0;
    if (b-a)/abs(xi1)<erro && abs(fxi1)<erro;
       parada_bissec ='True';
    else
        parada_bissec ='False';
    end
end
end


    

    
