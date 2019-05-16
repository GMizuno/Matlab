A=[10 2 1; 1 5 1;2 3 10]; b=[7; -8; 6]; G=[.7; -1.6;.6];
% A=[1 1;1 -3]; b=[3;-3]; G=[1;1];
Diagonal=diag(A);
for ii=1:length(b)
    for jj=1:length(b)
        if ii==jj
            C(ii,jj)=0;
        else
             C(ii,jj)=-A(ii,jj)/Diagonal(ii);
        end
    end
end
xk=G; erro=5*10^(-20);xk1=C*xk+G;

% x(k+1)=Cx(k)+G, onde G é o chute inicial
% % no caso inicial x(0)=G

while max(abs(xk1-xk),[],'all')/max(abs(xk),[],'all')>erro
    xk=xk1;
    xk1=C*xk+G;
end
xk1




