% % inversa.m
function [Ainv] = inversa(A)

    [numlin, numcol]=size(A);
    Ainv = zeros(numlin,numcol); % Criando um matriz de zeros q vai se tronar a inversa A
    [L,U,P] = LU(A); % Usando o programa LU.m
    Pn = eye(numlin,numcol);  % Array com as matrizes de permutacao

    for ii=numlin:-1:1
        Pn = Pn*P(:,:,ii); % Guardado essas matrizes
    end

    for ii = 1:numlin
        [y] = solinferior(L,Pn(:,ii)); % Usando o programa solinferior.m
        [Ainv(:,ii)] = solsuperior(U,y); % Usando o programa solsuperior.m
    end

end

% A=[1 0 0 0; 2 3 0 0; 1 2 5 0; 1 2 3 4]; B=[1; 3; 5; 8];
% A=[1 4 -5 -8 -40 12
%      3 -3 45 6 60 -9 
%      1 2 4 6 9 -4 
%      20 30 5 -6 -10 -4 
%      3 9 16 28 -4 -40  
%      -10 -4 -35 2 10 20]; 