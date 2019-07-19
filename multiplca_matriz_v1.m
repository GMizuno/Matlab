% Este programa multiplica uma matriz A m x n por uma matriz b n x p que
% resulta numa matriz C m x p

% A = [ 1 2 3 5 8 9 3 -43
%     2 -3 -4 5 -10 23 40 -9
%     1 9 6 -4 -5 23 10 5]; 
% b = [1 2; -5 -10; 6 -20; 32 42; 4 -9; 3 30; -10 -40; -5 10];

A =rand(100);
b =rand(100);

[numlinA, numcolA] = size(A);
[numlinb, numcolb] = size(b);

if numcolA == numlinb
    C = zeros(numlinA, numcolb);
    tic
    for ii = 1:numlinA
       for jj = 1:numcolb
           soma = 0;
           for kk = 1:numcolA
               soma = soma + A(ii,kk)*b(kk,jj);
           end
           C(ii,jj) = soma; 
       end
    end    
    toc
    % % Testando
    tic 
    C2 = A*b;
    toc
else
   disp('Deu ruim!!!!') 
end










