function resultado = Ajuda_Prod_Cartesiano(set1, set2, posicao)
% Esta funcao retorna (set1[1], todos os elementos de set2)
% Exemplo: Ajuda_Prod_Cartesiano([1, 2, 3], [20, 30], 1) => (1,20), (1,30)

n2 = length(set2);
resultado = zeros(n2, 2);
for ii = 1:n2
    resultado(ii, 1:2) = [set1(posicao), set2(ii)];
end
end

