clear

x0 = 2;
h = 1/128;
t0 = 1;
T = 3;
[t, N] = exer45_nodos(t0, T, h);

B = [1/2 1/2 0 0 0; 1/2 0 1/2 0 0; 1 0 0 1/2 0; 0 1/6 1/3  1/3 1/6];

f = @(t,x) (t^-2)*(t * x - x^2);
F1 = @(t,x) f(t,x);
F2 = @(t,x) f(t + B(1,1)*h, x + h*B(1,2)*F1(t, x));
F3 = @(t,x) f(t + B(2,1)*h, x + h*(B(2,2)*F1(t, x) + B(2,3)*F2(t, x)));
F4 = @(t,x) f(t + B(3,1)*h, x + h*(B(3,2)*F1(t, x) + B(3,3)*F2(t, x) + B(3,4)*F3(t, x)));

w(1) = x0;
for k = 1:N
    w(k+1) = w(k) + h * (B(4,2)*F1(t(k), w(k)) + B(4,3)*F2(t(k), w(k)) + ...
        B(4,4)*F3(t(k), w(k)) + B(4,5)*F4(t(k), w(k)));
end

x(1) = x0;
for k = 1:N+1
    x(k) = 2*t(k) / (1+2*log(t(k)));
end

plot(t,w, t,x)

