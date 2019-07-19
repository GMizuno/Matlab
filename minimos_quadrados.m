%Este programa ajusta um polinômio de grau n por uma nuvem de pontos dados
%utilizando o método dos mínimos quadrados discretos
clear;
x=[-10 -9 4 3 -7 -2 9 10 20 -3 5];
y=[3 5 -7 8 20 15 -4 0 -9 10 10];
m=length(x);%número de pontos dados
n=1;%grau do polinômio
vettermosA=zeros(1,2*n);
b=zeros(n+1,1);
%Aqui calculo os diferentes termos que vão compor a matriz A
for ii=1:m %loop do somatório
    for jj=1:2*n%loop para calcular cada termo diferente
        vettermosA(jj)=vettermosA(jj)+x(ii)^jj;
    end
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%aqui preencho o vetor b
for ii=1:m %loop do somatório
    for jj=1:n+1%loop para calcular cada termo diferente
        b(jj)=b(jj)+y(ii)*x(ii)^(jj-1);
    end
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Aqui eu monto a matriz A
A=zeros(n+1);
A(1,1)=m;
A(1,2:n+1)=vettermosA(1:n);
for ii=2:n+1
    A(ii,:)=vettermosA(ii-1:ii-1+n);
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
c=A\b;
xaux=min(x):0.01:max(x);
lxaux=length(xaux);
yaux=zeros(1,lxaux);
for ii=1:n+1 %ii valendo 1 calculo o termo de potência 0, pra ii valendo 2 calculo o termos de potência 1, e assim por diante
    yaux=yaux+c(ii)*xaux.^(ii-1);
end
figure(2),plot(x,y,'or',xaux,yaux)
    