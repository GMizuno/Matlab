% Fazendo grafico de uma variavel
x=[-10:10]; yreta=x; yparab=x.^2;
x2=[-20:10:20]; yreta2=x2; yparab2=x2.^2;
cos1=cos((pi/5).*x); cos2=cos((pi/10).*x);cos3=cos((pi/10).*x2);
x3=[-10:0.25:10];cos3=cos((pi/5).*x3);
x4=[-10:2:10];cos4=cos((pi/5).*x4);

%Plotando grafico
plot(x,yreta,'-og')
figure(2),plot(x,yreta,'k') %Mudando onde guarda o grafico default=figure(1)
                            % k muda a cor da linha
plot(x,yreta,'ko') %ko bota um grafico de boinhas com cor preta
plot(x,yreta,'ko-') %- acrescenta um traco ao grafico
plot(x,yreta,'.-r') %.-r coloca os pontos de x com tracos vermelho

%'Criando' cor com a escala RGB.
plot(x,yreta,'.-r','Color',[0 0.7 0])
plot(x,yreta,'.-r','Color',[1 1 0])
plot(x,yreta,'.-r','Color',[0 0.4470 0.7410])
plot(x,yreta,'.-r','Color',[255, 153, 51]/255)
grid

%Colocando dois grafico.

plot(x,cos1,x,cos2)
% % Outra forma
plot(x,cos1,'.-b'); hold
plot(x,cos2,'r')
% %Em  dois figures diferentes
figure(1),plot(x,cos1)
figure(2),plot(x,cos2)
% % Dois no mesmo figure
subplot(2,1,1); %reserva espaco 2x1 para grafico e coloca o primeiro na pos 1
plot(x,cos1)
title('AAAAAAAAAAA')
subplot(2,1,2); %reserva espaco 2x1 para grafico e coloca o primeiro na pos 2
plot(x,cos2,'Color',[1 0 0])
title('BBBBBBBBBBBB')
% % Outra forma
subplot(1,2,1); %reserva espaco 1x2 para grafico e coloca o primeiro na pos 1
plot(x,cos1)
title('AAAAAAAAAAA')
subplot(1,2,2); %reserva espaco 1x2 para grafico e coloca o primeiro na pos 2
plot(x,cos2,'Color',[1 0 0])
title('BBBBBBBBBBBB')

%Outros graficos.
plot(x4,cos4,x3,cos3)
legend({'Grafico com menos pontos','Grafico com mais pontos'},'Location','southwest')
% % Outra forma
plot(x,cos1); hold
plot(x,cos2)
