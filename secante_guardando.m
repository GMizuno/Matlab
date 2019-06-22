% Este programa acha zero de funções utlizando o método da Secantes
clear
% xkm1 = x_{k-1}
xk = 0.3; xkm1 = 0.4; dr1 = 1; dr2 = 1;
epsilon1 = 1e-9;
epsilon2 = 1e-9;
numaxit = 100;
numint = 0;
vetkmais1(1) = xkm1;
vetkmais1(2) = xk;

tic
while (dr1(numint + 1)  > epsilon1 && numint <= numaxit) || (dr2(numint + 1) > epsilon2 && numint <= numaxit)
    fxk = log(cos(xk)); 
    fxkm1 = log(cos(xkm1));
    flxk = (fxk - fxkm1)/(xk-xkm1);
    xkmais1 = xk - fxk/flxk;    
    dr1(numint + 2) = abs((xkmais1-xk)/xkmais1);
    fxkmais1 = log(cos(xkmais1));
    dr2(numint + 2) = abs(fxkmais1);
    xkm1 = xk;
    xk =xkmais1;
    numint = numint + 1;
    vetkmais1(numint + 2) = xkmais1;
end
toc

figure(2), subplot(3,1,1),plot(vetkmais1,'-or'), subplot(3,1,2),plot(dr1,'-or'), subplot(3,1,3),plot(dr2,'-or')