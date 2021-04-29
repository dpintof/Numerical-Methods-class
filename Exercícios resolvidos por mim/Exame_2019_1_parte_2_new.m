clear
clc

N = 10;
t0 = 0;
T = 1;
[t, h] = Exames_nodos(t0, T, N);

M = 5;
x0 = 0;
xM = 100;
[x, l] = Exames_nodos(x0, xM, M);

lambda = h/l;

% Condição inicial
for j = 1:M+1
    w(1,j) = exp(-x(j));
end

% Condição de fronteira 1
for k = 1:N+1
    w(k,1) = exp(t(k));
end

% Condição de fronteira 2
w(:,M+1) = 0;

for k = 2:N
    for j = 2:M
        w(k+1,j) = w(k-1,j) + lambda*(w(k,j-1) - w(k,j+1));
    end
end

surf(x, t, w)

