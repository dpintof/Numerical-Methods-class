h = 0.01;
t0 = 2;
T = 3;
[t, N] = exer45_nodos(t0, T, h);
w(1) = 1;
f = @(t, x) 1 + (t-x)^2;
df_dt = @(t, x) 2*t - 2*x;

for k = 1:N
    w(k+1) = w(k) + h*f(t(k), w(k)) + h^2/2 * df_dt(t(k), w(k));
end

% Para comparação
x = @(t) 1/(1-t) + t;
y(1) = 1;

for k = 1:N
    y(k+1) = x(t(k));
end

plot(t, w, t, y)