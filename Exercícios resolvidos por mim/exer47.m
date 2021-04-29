f = @(t, x) 1 + x/t;
t0 = 1;
T = 2;
x0 = 2;
h = 0.1;

w_trapesio = exer47_trapesio(f, t0, T, x0, h)

w_Heun = exer47_Heun(f, t0, T, x0, h)

x = @(t) t * (2+log(t));

y(1) = 2;
[t, N] = exer45_nodos(t0, T, h);

for k = 1:N
    y(k+1) = x(t(k+1));
end

plot(t, w_trapesio, t, w_Heun, t, y)