x=[-20:0.1:20];
y=[-20:.1:20];

for ii=1:length(y)
    for jj=1:length(x)
        z(jj,ii)=x(ii)^2+y(jj)^2;
    end
end

% % Fazendo grafico
figure(1), surf(x,y,z),shading interp, colorbar
% % Outra forma de fazer figura
figure(2), mesh(x,y,z),shading interp, colorbar
% Dar um zoom para entender a diferenca entre elas.

% % Fazendo um solidos
figure(3),waterfall(x,y,z),shading interp, colorbar

close all; clear


    
    


