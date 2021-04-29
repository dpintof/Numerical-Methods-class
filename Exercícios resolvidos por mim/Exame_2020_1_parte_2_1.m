function tr = Exame_2020_1_parte_2_1(M)
% O programa está construído assumindo os inputs são matrizes quadradas
% "tr" é o traço de M

n = length(M); % determina a ordem da matriz A
tr = 0; % iniciar a variável traço

for  k = 1:n
    tr = M(k,k) + tr; % em cada iteração vamos buscar o elemento a_kk e 
    % somamos o seu valor ao traço calculado até agora

end

end

