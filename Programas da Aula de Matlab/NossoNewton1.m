% Este programa acha raizes de equaçoes algebricas escalares pelo método de
% Newton. Não guardamos todas as aproximações produzidas para x!
clear
cont1=0;
tol1=1e-14;
tol2=1e-14;
erro1=tol1+1;
erro2=tol2+1;
nummaxit=100;
xantigo=1;
while erro1>tol1 && cont1<nummaxit || erro2>tol2 && cont1<nummaxit
    fx=xantigo-sin(xantigo);
    flinhax=1-cos(xantigo);
    xnovo=xantigo-fx/flinhax;
    erro1=abs(xnovo-xantigo);
    erro2=abs(xnovo-sin(xnovo));
    xantigo=xnovo;
    cont1=cont1+1;
end