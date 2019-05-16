% Esse programa resolve um sistema usando o metodo de Gauss-Jacobi para
% sistemas

A = [1 4 -5 -8 -40 12
    3 -3 45 6 60 -9
    1 2 4 6 9 -4
    20 30 5 -6 -10 -4
    3 9 16 28 -4 -40
    -10 -4 -35 2 10 20];

b = transpose([1 3 5 7 -10 -30]);
[numlin, numcol] = size(A);
chute = zeros(numlin,1);

% % Primeira solucao (onde ei faco contas que eu sei que dará o)

Aaux = A - diag(diag(A));
x = (b-Aaux*chute)./diag(A);



