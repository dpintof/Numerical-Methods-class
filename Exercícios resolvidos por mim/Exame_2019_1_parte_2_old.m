clear

x_0 = 0;
x_M = 100;
t_0 = 0;
T = 1;
h = 0.1;
l = 1;
lambda = h/l;

[t, N] = exer45_nodos(t_0, T, h);
[x, M] = exer45_nodos(x_0, x_M, l);

for i = length(t):-1:1
    t(i+1) = t(i);
end

% Valor fantasma de t
t(1) = t(2) - h;

for i = length(x):-1:1
    x(i+1) = x(i);
end

% Valores fantasma de x
% Se calhar não preciso de valor fantasma depois do último. Assumo que 
% w(t, % 100) = 0?
x(1) = x(2) - l;
x(end+1) = x(end) + l;

% 1a linha, com o valor de t fantasma
% w(1, j) = ;

% w(k+1, j) = w(k-1, j) + lambda*(w(k, j-1) - w(k, j+1));

