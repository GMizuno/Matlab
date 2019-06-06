% Este programa acha zero de funções utlizando o método de Newton
clear

x0 = .5; dr1 = 1; dr2 = 1;
epsilon1 = 1e-9;
epsilon2 = 1e-9;
numaxit = 100;
numint = 0;
fx1 = log(cos(x0));

while (dr1 > epsilon1 && numint <= numaxit) || (dr2 > epsilon2 && numint <= numaxit)
    fx = fx1;
    flx = -tan(x0);
    x1 = x0 - fx/flx;    
    dr1 = abs((x1-x0)/x1);
    dr2 = abs(log(cos(x1)));
    fx1 = log(cos(x1));
    x0 = x1;
    numint = numint + 1;
end

