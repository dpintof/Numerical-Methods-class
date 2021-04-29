function coef = exer4(xs, ys, m)
% xs é um vetor com n pontos xk
% ys é um vetor com n valores f(xk)
% m é o grau máximo do polinómio
% coef é o vetor com m+1 coeficientes ak do polinómio de grau <= m do 
% método dos mínimos quadrados

% k = 1, ..., n

n = length(xs);

    for j = 1:n
        for k = 0:m
            A(j, k+1) = xs(j)^(k);
        end
    end

coef = inv(A'*A) * (A'*ys');
    
end

% Para testar:
% xs = [0 1 2 3 4];
% ys = [1 0 3 5 8];
% m = 2;
% exer4(xs, ys, m)

% Confirmei os coeficientes com o resultado do exercício 1.5 dos slides


