function inversa = Exame_2020_1_parte_2_2(M)
% O programa está construído assumindo os inputs são matrizes quadradas
% "inversa" é a matriz inversa de M

n = length(M); % determina a ordem da matriz A
B_0 = eye(n); % matriz identidade de ordem n

for  k = 1:n
    
    % cálculo de A_k
    if k == 1
        A{k} = M * B_0;
    else
        A{k} = M * B{k-1};
    end
    
    tr = Exame_2020_1_parte_2_1(A{k}); % cálculo do traço de A_k
    
    c(k) = -tr/k; % cálculo de c_k
    
    B{k} = A{k} + c(k) * B_0; % cálculo de B_k

end

inversa = -1/c(n) * B{n-1};

end

