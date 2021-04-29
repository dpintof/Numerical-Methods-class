clear
clc

N = 30;
t0 = 0;
T = 1;
[t, h] = Exames_nodos(t0, T, N);

M = 2;
x0 = 0;
xM = 1;
[x, l] = Exames_nodos(x0, xM, M);

miu = h / l^2;
miu <= 1/6

% Deslocar os pontos x, N+1 posições para a direita
for j = M+1:-1:1
    x(j+N+1) = x(j);
end

% Criar N+1 pontos fantasma em cada lado
for j = 1:N+1
    x(N+2-j) = x(N+2) - j*l;
    x(N+M+2+j) = x(N+M+2) + j*l;
end

% Condição inicial
for j = 1:length(x)
    w(1,j) = x(j)^2 - 1;
end

% Condições de fronteira
for k = 1:N+1
    w(k,N+2) = -exp(t(k));
    w(k,N+M+2) = t(k);
end

for k = 1:N
    for j = (3+k-1): 2*(N+1) + M+1 - 2 - k + 1
        w(k+1,j) = 1/2*(2 - 5*miu + 6*miu^2)*w(k,j) + 2/3*miu*(w(k,j+1) + w(k,j-1))...
            -1/12*miu*(1-6*miu)*(w(k,j+2) + w(k,j-2));
    end
end

aprox_sol = w(end, N+2:N+M+2);
plot(x(N+2:N+M+2), aprox_sol)

