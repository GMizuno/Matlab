% Este programa acha zero de funções utlizando o método de Newton
clear

x(1) = .5; dr1(1) = 1; dr2(1) = 1;
epsilon1 = 1e-9;
epsilon2 = 1e-9;
numaxit = 100;
numint = 0;
fx1 = log(cos(x(1))) + 5;

tic
while (dr1(numint + 1)  > epsilon1 && numint <= numaxit) || (dr2(numint + 1) > epsilon2 && numint <= numaxit)
    fx = fx1;
    flx = -tan(x(numint + 1));
    x(numint + 2) = x(numint + 1) - fx/flx;    
    dr1(numint + 2) = abs((x(numint + 2)-x(numint + 1))/x(numint + 2));
    dr2(numint + 2) = abs(log(cos(x(numint + 2))));
    fx1 = log(cos(x(numint + 2))) + 5;
    numint = numint + 1;
end
toc

figure(1), subplot(3,1,1),plot(x,'-o'), subplot(3,1,2),plot(dr1,'-o'), subplot(3,1,3),plot(dr2,'-o')