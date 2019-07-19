%Runge-Kutta 4a. ordem
clear;
h=0.1;
t=5:h:10;
lt=length(t);
w=zeros(1,lt);
w(1)=1;
for ii=1:lt-1
    k1=h*(log(t(ii)^2+w(ii))/(w(ii)^2));
    k2=h*(log((t(ii)+h/2)^2+(w(ii)+k1/2))/((w(ii)+k1/2)^2));
    k3=h*(log((t(ii)+h/2)^2+(w(ii)+k2/2))/((w(ii)+k2/2)^2));
    k4=h*(log(t(ii+1)^2+(w(ii)+k3))/((w(ii)+k3)^2));
    w(ii+1)=w(ii)+(1/6)*(k1+2*k2+2*k3+k4);
end

%%%%%Metodo de Euler%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
wEuler=zeros(1,lt);
wEuler(1)=1;
for ii=1:lt-1
    wEuler(ii+1)=wEuler(ii)+h*(log(t(ii)^2+wEuler(ii))/wEuler(ii)^2);
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

figure(1),plot(t,w,'r*',t,wEuler,'ob'),grid