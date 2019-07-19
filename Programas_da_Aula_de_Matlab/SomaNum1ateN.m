%Este programa soma todos os numeros (inteiros) de 1 até N.
clear
Soma=0;
N=1e3;
for ii=1:N
    Soma=Soma+ii;
end
Soma

%Agora utilizando a forma de soma de uma PA.
Soma2=(1+N)*N/2