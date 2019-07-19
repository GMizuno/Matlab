%runge-kutta 4a ; ordem
clear;
h=0.1;
t=0:h:2;%criamdo o vetor tempo
lt=length(t);%definindo variavel
w=zeros(1,lt);%definindo variavel
w(1)=0.5;%valor inicial
for  ii=1:lt-1%metodo propriamente
    k1=h*(w(ii)-t(ii)^2+1);
    k2=h*((w(ii)+k1/2)-(t(ii)+h/2)^2+1);
    k3=h*((w(ii)+k2/2)-(t(ii)+h/2)^2+1);
    k4=h*((w(ii)+k3)-(t(ii+1))^2+1);
    w(ii+1)=w(ii)+(1/6)*(k1+2*k2+2*k3+k4);
end
%%%solução anaitica
tanalitico=0:0.01:2;%criando vetor t para  ser aplicado na solução analitica
yanalitico=(tanalitico+1).^2-0.5*exp(tanalitico);%aplicando a solução analitica
%%%%%%%%%%%%%%

%%%%%%%%%metodo de  Euler%%%%%%%
wEuler=zeros(1,lt);
wEuler(1)=0.5;
for ii=1:lt-1;
    wEuler(ii+1)=wEuler(ii)+h*(wEuler(ii)-t(ii)^2+1);
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
figure(1),plot(tanalitico,yanalitico,'k-o',t,w,'r*',t,wEuler,'ob'),grid%plotando os metodos e a solucao analitica