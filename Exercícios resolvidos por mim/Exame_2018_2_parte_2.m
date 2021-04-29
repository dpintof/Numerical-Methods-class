clear

x0 = 0;
h = 0.01;
t0 = 0;
T = 1;
[t, N] = exer45_nodos(t0, T, h);

B = [1/2 1/2 0 0 0; 1/2 (sqrt(2)-1)/2 (2-sqrt(2))/2 0 0; 1 0 -sqrt(2)/2 (2+sqrt(2))/2 0; ...
    0 1/6 (2-sqrt(2))/6  (2+sqrt(2))/6 1/6];

f = @(x) x^2 - 1; % neste exercício f só depende explicitamente de x, mas podia não ser assim.
F1 = @(x) f(x);
F2 = @(x) f(x + h*B(1,2)*F1(x));
F3 = @(x) f(x + h*(B(2,2)*F1(x) + B(2,3)*F2(x)));
F4 = @(x) f(x + h*(B(3,2)*F1(x) + B(3,3)*F2(x) + B(3,4)*F3(x)));

w(1) = x0;
for k = 1:N
    w(k+1) = w(k) + h * (B(4,2)*F1(w(k)) + B(4,3)*F2(w(k)) + ...
        B(4,4)*F3(w(k)) + B(4,5)*F4(w(k)));
end

x(1) = x0;
for k = 1:N+1
    x(k) = (1-exp(2*t(k)))/(1+exp(2*t(k)));
end

plot(t,w, t,x)

