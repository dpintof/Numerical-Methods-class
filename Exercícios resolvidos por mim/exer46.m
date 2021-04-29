function w = exer46(t0, T, h, xt0, f, eps)

[t, N] = exer45_nodos(t0, T, h);
x(1) = xt0;
w(1) = xt0;
F = @(t_kMais1, x, w_k) x - h*f(t_kMais1, x) - w_k;
F_derivada_x = @(t_kMais1) 1 - h*1/t_kMais1;

j = 1;

for k = 1:N    
    x(j+1) = x(j) - F(t(k+1), x(j), w(k)) / F_derivada_x(t(k+1));
    
    while abs( x(j+1)-x(j) ) / abs( x(j) ) >= eps
        j = j + 1;
        x(j+1) = x(j) - F(t(k+1), x(j), w(k)) / F_derivada_x(t(k+1));
    end
    
    w(k+1) = x(j+1);
end
end

% Testar
% t0 = 1;
% T = 2;
% h = 0.25;
% xt0 = 2;
% f = @(t, x) 1 + x/t;
% eps = 10^-9;
% w = exer46(t0, T, h, xt0, f, eps)
% 
% h = 0.1;
% w = exer46(t0, T, h, xt0, f, eps)
% 
% h = 0.01;
% w = exer46(t0, T, h, xt0, f, eps)

