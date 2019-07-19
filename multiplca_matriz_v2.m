% Este programa multiplica uma matriz A m x n por uma matriz b n x p que
% resulta numa matriz C m x p. Para fazer esse programa e usado a funcao
% dot
clear
A =rand(1000);
B =rand(1000);

[numlinA, numcolA] = size(A);
[numlinB, numcolB] = size(B);
C = zeros(numlinA,numcolA);
tic
for ii = 1:numlinA
    for jj = 1:numlinB
        C(ii,jj) = dot(A(ii,:),B(:,ii));
    end
end
toc

tic
C1 = A*B;
toc


