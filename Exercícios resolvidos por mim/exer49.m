N = 100;
t0 = 0;
T = 10;
h = (T - t0) / N;
[t] = exer45_nodos(t0, T, h);
w(1) = 1;

for k = 1:N
    w(k+1) = w(k) + h*w(k) +h^2/2 * w(k) + h^3/3 * w(k);
end

% Para comparação
x = @(t) exp(t);
y(1) = 1;

for k = 1:N
    y(k+1) = x(t(k));
end

plot(t, w, t, y)