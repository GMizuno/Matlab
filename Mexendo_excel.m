% Mexendo excel


% % Escrevendo
G1 = [1 3 4.55 10.45555 -2 -7.8888
    0 1 2 3 4 5
    -2 -10 -2 -20 -3 -100]; 
xlswrite('Planilhas_matlab_1.xls', G1,'Gastos', 'R10')
xlswrite('Planilhas_matlab_1.xls', {'Custos fixo', 'Custo variavel'; 2 4;
    100, 102; 30 50}, 'Custos');

% % Lendo
matriz = xlsread('Planilhas_matlab_1.xls', 'Gastos','R10')