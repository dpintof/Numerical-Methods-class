clear

x_0 = 0;
x_M = 1;
t_0 = 0;
T = 1;
miu = 1/6;
h = 0.01;
l = sqrt(h/miu);

[t, N] = exer45_nodos(t_0, T, h);
[y, M] = exer45_nodos(x_0, x_M, l); 

for i = 1:length(y)
    x(i+2*N) = y(i);
end

% Valores fantasma de x. Preciso de 2*N valores atrás do primeiro valor e
% outros 2*N valores depois do último valor 
for i = 1:2*N
    x(2*N+1-i) = x(2*N+1) - i*l;
    x(2*N+7+i) = x(2*N+7) + i*l;
end

for j = 1:length(x)
    w(1, j) = x(j)^2 -1;
end

i = 0;

for k = 1:N
    for j = 3+i:length(x)-2-i 
        w(k+1, j) = 1/2*(2-5*miu+6*miu^2)*w(k, j) + 2/3*miu*(2-3*miu)* ...
        (w(k, j+1) + w(k, j-1)) -1/12*miu*(1-6*miu)*(w(k, j+2)+w(k, j-2));
    end
    i = i + 2;
end

aprox_sol = w(end, 2*N+1:2*N+M+1)
plot(x(2*N+1:2*N+M+1), aprox_sol)