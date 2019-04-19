A=[5 1 1; 3 4 1;3 3 6]; b=[5; 6; 0]; G1=[0;0;0];
L=tril(A,-1); U=triu(A,1); D=A-L-U;Dia=diag(A);

for ii=1:length(b)
    for jj=1:length(b)
        L1(ii,jj)=L(ii,jj)/Dia(ii);
        U1(ii,jj)=U(ii,jj)/Dia(ii);
    end
end

C=-inv(eye(length(b))+L1)*U1; g=inv(eye(length(b))+L1)*inv(D)*b;
xk=G1; erro=5*10^(-20);xk1=C*xk+g;k=1

while max(abs(xk1-xk),[],'all')/max(abs(xk),[],'all')>erro
    xk=xk1;
    xk1=C*xk+g;
    k=k+1
end


