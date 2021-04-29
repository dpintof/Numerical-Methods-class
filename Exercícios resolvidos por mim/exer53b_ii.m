function [x, w] = exer53b_ii(t_0, t_N, h, lambda, x_0, x_M)

l = h/lambda;
[y, M] = exer45_nodos(x_0, x_M, l); % Passo 1
[t, N] = exer45_nodos(t_0, t_N, h); % Passo 2
M = M + 1;
N = N + 1;

% Passo 3
for j = 1:M
    x(j) = y(j);
end

for j = 1:N
    x(M+j) = y(end) + j*l;
end

% Passo 4
for j = 1:length(x)
    if x(j) <= 0
        w(1, j) = 1;
    elseif x(j) >= 1
        w(1, j) = 0;
    else
        w(1, j) = 2*x(j)^3 - 3*x(j)^2 +1;
    end
end

% Passo 5
c = 1;

for k = 1:N-1
    for j = N+M-k:-1:M
        w(k+1, j) = (1+lambda*c) * w(k, j) - lambda*c*w(k, j+1);
    end
end

% Passo 6
for k = 1:N-1
    w(k+1, M) = (1+lambda*c) * w(k, M) - lambda*c*w(k, M+1);
end

% Passo 7
for k = 1:N-1
    for j = M-1:-1:1
        w(k+1, j) = (1+lambda*c) * w(k, j) - lambda*c*w(k, j+1);
    end
end

surf(x, t, w)

end

% Testar
% t_0 = 0;
% t_N = 10;
% h = 1;
% lambda = 0.5;
% x_0 = 1;
% x_M = 4;
% [x, w] = exer53b_ii(t_0, t_N, h, lambda, x_0, x_M)

