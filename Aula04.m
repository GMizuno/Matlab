% Fazendo grafico de tres variaveis

% %Criando paraboloide
x=-10:1:10;
y=-20:2:10;
% z=x.^2+y.^2 isso da errado, vamos usar for
for ii=1:length(y)
    for jj=1:length(x)
        z(ii,jj)=x(jj)^2+y(ii)^2;       
    end
end

figure(1),pcolor(x,y,z)
 
help shading
% % Tirando linhas de grade
figure(2),pcolor(x,y,z),shading flat
% % Outra forma 
figure(2),pcolor(x,y,z),shading interp

% % Outra forma
x2=-10:0.01:10;
y2=-10:0.01:10;

for ii=1:length(y2)
    for jj=1:length(x2)
        z2(ii,jj)=x2(jj)^2+y2(ii)^2;
    end
end

% % O grafico ficou feio pq tem muitas grades
figure(3),pcolor(x2,y2,z2)

% % Melhorando grafico
figure(4),pcolor(x2,y2,z2),shading interp
figure(5),pcolor(x2,y2,z2),shading flat

% % Colocando legenda
figure(6),pcolor(x2,y2,z2),shading flat, colorbar
figure(6),pcolor(x2,y2,z2),shading interp, colorbar

% % Criando intervalos de max e min para as colores, ou seja, vamos 
% % mudar o eixo da escala
figure(7),pcolor(x2,y2,z2),shading interp, caxis([0 100]), colorbar
figure(7),pcolor(x2,y2,z2),shading interp, caxis([0 20]), colorbar

% % Plotando uma subregiao de x e/ou y
figure(8),pcolor(x2,y2,z2),shading interp, colorbar,axis([-7 10 3 9]), caxis([0 20])

% % Comando para plotar superficie
figure(1),surf(x,y,z)

% % Outras formas
figure(1),surf(x2,y2,z2), shading interp

















    
    
    


