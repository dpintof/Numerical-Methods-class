function f = exer2b1(xs, ys)
% xs é um vetor com n pontos xk
% ys é um vetor com n valores f(xk)
% f é a a diferença dividida de Netwon, ou seja f[x1, x2, ..., xn]
% k = 1, ..., n

n = size(xs, 2);

    if n == 1
        f = ys(1);
    else    
        f = (exer2b1(xs(2:n), ys(2:n)) - exer2b1(xs(1:n-1), ys(1:n-1))) / (xs(n) - xs(1));
    end

end

% Testar:
% xs = [2 2.75];
% ys = [1/2 1/2.75];
% exer2b1(xs, ys)

% Resultado: -0.1818

% Para verificar o resultado: (ys(2) - ys(1)) / (xs(2) - xs(1))


% xs = [2 2.75 4];
% ys = [1/2 1/2.75 1/4];
% exer2b1(xs, ys)

% Resultado: 0.0455

% Para verificar o resultado: 
% (exer2b1(xs(2:3), ys(2:3)) - exer2b1(xs(1:2), ys(1:2))) / (xs(3) - xs(1))
% ou, na forma mais extensa
% (((ys(3) - ys(2)) / (xs(3) - xs(2))) - (ys(2) - ys(1)) / (xs(2) - xs(1))) / (xs(3) - xs(1))



