function w = exer52(a, b, h, y_1, y_N)

[nodos, N] = exer45_nodos(a, b, h);
nodos_interiores = nodos(2:length(nodos)-1);
A = full(gallery('tridiag', N-1, 2+h, -4-4*h^2, 2-h)); % Matriz tridiagonal
b(1) = -1*(2+h)*y_1 + 2*h^2 * cos(nodos(2));
b(N-1) = -1*(2-h)*y_N + 2*h^2 * cos(nodos(N-1));

for k = 2:N-2
    b(k) = 2 * h^2 * cos(nodos(k));
end

[U, L] = exer29(A);
y = exer26a(L, b);
w_nodos_interiores = exer26b(U, y);
w(1) = y_1;
w(N+1) = y_N;
w(2:N) = w_nodos_interiores;

end

% Testar (só posso fazer um plot de cada vez)
% a = 0;
% b = pi/2;
% h = pi/10;
% y_1 = -0.3;
% y_N = -0.1;
% w1 = exer52(a, b, h, y_1, y_N)
% 
% [x, N] = exer45_nodos(a, b, h);
% for k = 1:N+1
%     y1(k) = -1/10 * (sin(x(k)) + 3*cos(x(k)));
% end
% y1
% 
% % plot(x, w1, x, y1)
% 
% h = pi/100;
% w2 = exer52(a, b, h, y_1, y_N)
% 
% [x, N] = exer45_nodos(a, b, h);
% for k = 1:N+1
%     y2(k) = -1/10 * (sin(x(k)) + 3*cos(x(k)));
% end
% y2
% 
% plot(x, w2, x, y2)
