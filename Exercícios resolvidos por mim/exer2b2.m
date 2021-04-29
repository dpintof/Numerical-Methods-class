function d = exer2b2(xs, ys)
% xs é um vetor com n pontos xk
% ys é um vetor com n valores f(xk)
% k = 1, ..., n
% d é um vetor com n diferenças finitas


n = size(xs, 2);
    
    for k = 1:n
        d(k) = exer2b1(xs(1:k), ys(1:k));
    end
    
end

% Testar:
% xs = [2 2.75 4];
% ys = [1/2 1/2.75 1/4];
% exer2b2(xs, ys)

% Resultado: [0.5000   -0.1818    0.0455]

% Para verificar o resultado
% d1 = f[x1]: ys(1)
% d2 = f[x1, x2]: exer2b1(xs(1:2), ys(1:2))
% d3 = f[x1, x2, x3]: exer2b1(xs, ys)