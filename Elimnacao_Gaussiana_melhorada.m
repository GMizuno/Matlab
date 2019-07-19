% % Programa resolve um sistema completo usando eliminacao Gaussiana.
% % esse metodo é mais eficaz (no sentido de ter menos contas) q o anterior.
A=[ 1 4 -5 -8 -40 12
    3 -3 45 6 60 -9
    1 2 4 6 9 -4
    20 30 5 -6 -10 -4
    3 9 16 28 -4 -40
    -10 -4 -35 2 10 20];
% definindo b
b=transpose([1 3 5 7 -10 -30]);

[numlin,numcol]=size(A);
% definindo x
x=zeros(numlin,1);

% Solucao original
soloriginal=A\b;
tic
for ii=1:numcol-1
    for jj=ii+1:numlin
        m=(A(jj,ii)/A(ii,ii));
        for kk=ii:numcol
            A(jj,kk)=A(jj,kk)-m*A(ii,kk);           
        end
        b(jj)=b(jj)-m*b(ii);
    end
end   
toc
solofinal=A\b;