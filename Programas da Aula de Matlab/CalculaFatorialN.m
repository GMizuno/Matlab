%Este programa calcula o fatorial de N.
clear
N=1e2;
Produto=N;
for ii=N-1:-1:1
    Produto=Produto*ii;
end
Produto

%Agora utilizando a funcao do Matlab.
Produto2=factorial(N)