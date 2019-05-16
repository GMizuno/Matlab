%Este programa resolve sistemas triangulares superiores por Substituição
%Regressiva
function [Sol]=resolve_traing_supfun(A,b,mm,nn)
x=zeros(mm,1);
for ii=mm:-1:1
    soma=0;
    for jj=ii:nn-1
        soma=soma+A(ii,jj+1)*x(jj+1);
    end
    x(ii)=(b(ii)-soma)/A(ii,ii);
end
 
Sol = x