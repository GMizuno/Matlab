% %Este programa ordena um vetor em ordem decrescente (dos modulos)
% clear;
% v=zeros(1,10);
% v(5)=100;
% v(9)=100;
% % v=[-10 3 44 100 -33 -99 301 72 44 -7 10];
% v
% N=length(v);
% for jj=1:N-1
%     posicao=jj;
%     maiormodulo=0;
%     for ii=jj:N
%         if abs(v(ii))>maiormodulo
%             maiormodulo=abs(v(ii));
%             posicao=ii;
%         end
%     end
%     aux2=v(jj);
%     v(jj)=v(posicao);
%     v(posicao)=aux2;
%     v
%     pause
% end

%Este programa ordena um vetor em ordem decrescente
clear;
v2=zeros(1,10);
v2(5)=-100;
v2(7)=-35;
v2(9)=100;
% v2=[-10 3 44 100 -33 -99 301 72 44 -7 10];
v2
N=length(v2);
for jj=1:N-1
    posicao=jj;
    maiorvalor=-1e100;
    for ii=jj:N
        if v2(ii)>maiorvalor
            maiorvalor=v2(ii);
            posicao=ii;
        end
    end
    aux2=v2(jj);
    v2(jj)=v2(posicao);
    v2(posicao)=aux2;
    v2
    pause
end