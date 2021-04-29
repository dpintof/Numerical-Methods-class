function w = exer52_exemplo(a, b, h, x_a, x_b)

[nodos, N] = exer45_nodos(a, b, h);
% nodos_interiores = nodos(2:length(nodos)-1);
A = full(gallery('tridiag', N-1, 1, -2-h^2, 1)); % Matriz tridiagonal
b(1) = -x_a;
b(N-1) = -x_b;

[U, L] = exer29(A);
y = exer26a(L, b);
w_nodos_interiores = exer26b(U, y);
% w_interiores = exer27c(A, b);
w(1) = x_a;
w(N+1) = x_b;
w(2:N) = w_nodos_interiores

end

% Testar:
% a = 0;
% b = 1;
% h = (b-a)/6;
% x_a = 1;
% x_b = exp(1);
% w = exer52_exemplo(a, b, h, x_a, x_b)

% Comparar com:
% A = [-(2+1/36) 1 0 0 0; 1 -(2+1/36) 1 0 0; 0 1 -(2+1/36) 1 0; 0 0 1 -(2+1/36) 1; 0 0 0 1 -(2+1/36)];
% b = [-1 0 0 0 -exp(1)];
% x = exer27c(A, b)