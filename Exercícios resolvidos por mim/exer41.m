function [aprox_x, iter] = exer41(F, DF, x0, m)
% Esta função só funciona para um sistema com 2 equações

n = length(F);

for j = 1:n
    Fx(j) = F{j}(x0(1), x0(2));
end

for i = 1:n
    for j = 1:n
        DFx(i, j) = DF{i, j}(x0(1), x0(2));
    end
end

tol = 10^-m;
iter = 1;
k = 1;

y(:, k) = DFx*transpose([x0(1), x0(2)]) - transpose(Fx);
x(:, k) = transpose([x0(1), x0(2)]);
x(:, k+1) = exer27c(DFx, y);

while exer34( x(:, k+1) - x(:, k) ) / exer34( x(:, k) ) > tol
    x1 = x(1, k+1);
    x2 = x(2, k+1);
    k = k + 1;
    iter = iter + 1;
        
    for j = 1:n
        Fx(j) = F{j}(x1, x2);
    end

    for i = 1:n
        for j = 1:n
            DFx(i, j) = DF{i, j}(x1, x2);
        end
    end
    
    y(:, k) = DFx*transpose([x1, x2]) - transpose(Fx);
    x(:, k+1) = exer27c(DFx, y(:, k));
end

aprox_x = x(:, k+1)
iter

end

% Testar
% F = {@(x, y) x^2 + 4*y^2 - 9, @(x, y) 14*x^2 - 18*y - 45};
% DF = {@(x, y) 2*x, @(x, y) 8*y; @(x, y) 28*x, @(x, y) -18};
% x0 = [1 -1];
% m = 9;
% [aprox_x, n] = exer41(F, DF, x0, m);

