function [x, w] = exer53b_iii(t_0, t_N, h, lambda, x_0, x_M)

l = h/lambda;
[y, M] = exer45_nodos(x_0, x_M, l); % Passo 1
[t, N] = exer45_nodos(t_0, t_N, h); % Passo 2
M = M + 1;
N = N + 1;
P = round(N/2);

% Passo 3
for j = 1:P
    x(P+1-j) = y(1) - j*l;
    x(P+M+j) = y(end) + j*l;
end

for j = 1:M
    x(P+j) = y(j);
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
    for j = 1+k:P
        w(k+1, j) = (1+lambda*c)/2*w(k, j-1) + (1-lambda*c)/2*w(k, j+1);
    end
end

for k = 1:N-1
    for j = N+M-k:-1:P+M+1
        w(k+1, j) = (1+lambda*c)/2*w(k, j-1) + (1-lambda*c)/2*w(k, j+1);
    end
end

% Passo 6
for k = 1:N-1
    w(k+1, P+1) = (1+lambda*c)/2*w(k, P) + (1-lambda*c)/2*w(k, P+2);
    w(k+1, P+M) = (1+lambda*c)/2*w(k, P+M-1) + (1-lambda*c)/2*w(k, P+M+1);
end

% Passo 7
for k = 1:N-1
    for j = P+1:P+M
        w(k+1, j) = (1+lambda*c)/2*w(k, j-1) + (1-lambda*c)/2*w(k, j+1);
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
% [x, w] = exer53b_iii(t_0, t_N, h, lambda, x_0, x_M)

