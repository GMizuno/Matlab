% Este programa calcula o Fatorial de N
% Esse program poderia comecar de 2
prod=1; N=100;
for ii=1:N
    prod=prod*ii;
end
prod

% % % % % % % % % % % % % % % % % % % % % % % % % 
% Outra maneira
% % Comeca de N-1 pq na primeira rodada ficaria N^2 
clear
N=100;prod2=N;
for ii=N-1:-1:2
    prod2=prod2*ii;
end
prod2





