% Este program manipula matirzes
A = [-9 0 -7 18 3 5 7 79 -29
     10 3 -4 -5 77 81 100 200 -309
     2 -1 4 -5 66 77 -24 102 54
     4 5 6 99 12 -20 -30 -40 37
     3 -1 -4 5 67 88 90 93 100
     80 82 83 87 92 2009 2019 2020 2021 
     44 -55 -5 6 8 10 -23 -12 40
     -100 -200 3 4 6 8 0 0 6
     -30 30 -40 20 35 66 91 -211 4];
 
 [numlin, numcol] = size(A);
 
%  Colocando 1 na diagonal da matriz
% % Usando dois lacos 
 for ii = 1:numlin
     for jj=1:numcol
         if ii==jj
             A(ii,jj) = 1;
        end
     end
 end
 
% %  Usando um laco
for ii=1:numlin
    A(ii,ii) = 1;
end

% Aqui eu coloco o numero 0 em todas as entradas da diagonal imediatamente
% acima da diagonal
% % Usando 2 lacos
for ii=1:numlin-1 
    A(ii,ii+1) = 0;
end
% % Usando 1 laco
% % % Daria para trocar numlin por numlin-1]
for ii = 1:numlin
    for jj = 1:numol
        if jj == ii + 1
            A(ii,jj) = 0;
        end
    end
end

% Aqui eu coloc o numero 3 em otdas as entradas acima da diagonal
% imediatamente acima da diagonal principal
for ii = 1:numlin
    for jj = 1:numcol
        if jj >= ii+2
            A(ii,jj) = 3; 
        end
    end
end


for ii = 1:numlin-2
     A(ii,ii+2:numcol) = 3; 
end

% % Aqui vou criar uma matri B de terceira ordem que contera 2 matriz de
% segunda ordem: a pro pria matriz A e uma outra matriz que corresponde a
% matriz A, porem comt todos os seus elementos acrescidos de 2.

% %  Solucao com laco
tic
B = zeros(numlin,numcol,2);
for ii = 1:numlin
    for jj = 1:numcol
        B(ii,jj,1) = A(jj,ii);
        B(ii,jj,2) = A(jj,ii)+2;
    end
end
toc
% % Tempo 0.004531 seconds.
% % Solucao sem laco
tic
B(:,:,1) = A;  
B(:,:,2) = A + 2;
toc
% % Tempo 0.009857 seconds.



 
 
     