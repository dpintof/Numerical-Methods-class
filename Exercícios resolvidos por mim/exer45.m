function w = exer45(t0, T, h, xt0, f)

[t, N] = exer45_nodos(t0, T, h);

w(1) = xt0;

for k = 1:N
   w(k+1) = w(k) + f( t(k), w(k) )*h;
end

end

% Testar
% t0 = 1;
% T = 2;
% h = 0.25;
% xt0 = 2;
% f = @(t, x) 1 + x/t;
% w = exer45(t0, T, h, xt0, f)
% 
% h = 0.1;
% w = exer45(t0, T, h, xt0, f)
% 
% h = 0.01;
% w = exer45(t0, T, h, xt0, f)

