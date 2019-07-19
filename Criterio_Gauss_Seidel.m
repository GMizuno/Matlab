A=[1 .5 -.1 .1;.2 1 -.2 -.1; .1 -.2 1 .2; .1 .3 .2 1];
L=tril(abs(A),-1); U=triu(abs(A),1); M=L+U;
Dia=diag(A);
beta1=sum(M(1,:))/abs(Dia(1)); beta=[beta1 repelem(1,length(Dia)-1)];
M(1,:);

for ii=1:length(Dia)
    betai=dot(M(ii,:),beta)/abs(Dia(ii));
    beta(1,ii)=betai;
end

for ii=1:length(beta)
    b=max(beta);
    if b<1
        fprintf('Pelo metodo de Gauss-Seidel a sequencia converge')
    else
        fprintf('Pelo metodo de Gauss-Seidel a sequencia nao converge')
    end
end

