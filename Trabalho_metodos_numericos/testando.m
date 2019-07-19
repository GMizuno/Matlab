% %  Testando a infuncao inversa.m
A = [1 2 3 5
    2 3 15 20
    1 2 5 10
    1 2 3 4];
inv(A) - inversa(A)
inv(A)
inversa(A)


n = 10; A = randi([0, 10], [n,n]);
inv(A) - inversa(A)
inv(A)
inversa(A)


n = 15; B = randi([5, 10], [n,n]);
inv(B) - inversa(B)
inv(B)
inversa(B)


n = 8; C = randi([10, 100], [n,n]);
inv(C) - inversa(C)
inv(C)
inversa(C)


D = [1 0 0 0
    2 3 0 0
    1 2 5 0
    1 2 3 4];
inv(D) - inversa(D)
inv(D)
inversa(D)



A = [1 4 -5 -8 -40 12
     3 -3 45 6 60 -9 
     1 2 4 6 9 -4 
     20 30 5 -6 -10 -4 
     3 9 16 28 -4 -40  
     -10 -4 -35 2 10 20]; 
inv(A) - inversa(A)
inv(A)
inversa(A)


% % Matriz do trabalho
A = [4 -1 0 -1 0 0 
    -1 4 -1 0 -1 0
    0 -1 4 0 0 -1
    -1 0 0 4 -1 0
    0 -1 0 -1 4 -1
    0 0 -1 0 -1 4]
inv(A)
inversa(A)
inv(A) - inversa(A)
    
