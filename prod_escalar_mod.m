% Essa funcao retorna <u,v> e <v,v>

function [escalar,modulo] = prod_escalar_mod(vetor1,vetor2)
n = length(vetor1);
escalar = 0; modulo = 0;
for ii = 1:n
    escalar = escalar + vetor1(ii)*vetor2(ii);
    modulo = modulo + vetor1(ii)*vetor1(ii);
end

