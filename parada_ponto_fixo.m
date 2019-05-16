function parada_ponto_fixo = parada(erro,xi,xi1,fxi1)
if abs(xi1-xi)<erro && abs(fxi1)<erro
    parada_ponto_fixo = 1;
else
    parada_ponto_fixo = 0;
end
end
