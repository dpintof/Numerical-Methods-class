function [aprox_x, n] = exer39(A, b, x0, tol, w)

aprox_x{1} = x0;
n = length(A);
I = eye(n);

U = A;

for k = 1:n
    for j = 1:k
        U(k, j) = 0;
    end
end

L = A;

for k = 1:n
    for j = k:n
        L(k, j) = 0;
    end
end

D = A - L - U;
M_w = 1/w * D + L;
N_w = (1-w)/w * D - U;
 
aprox_x{2} = inv(M_w)* N_w * transpose(aprox_x{1}) + inv(M_w)*transpose(b);
k = 1;

while abs( exer34( aprox_x{k+1} - aprox_x{k} ) / exer34( aprox_x{k+1} ) ) > tol
    k = k + 1;
    aprox_x{k+1} = inv(M_w) * N_w * aprox_x{k} + inv(M_w)*transpose(b);
end 

n = k;
aprox_x = transpose( aprox_x{k+1} );

end

% Testar:
% A = [4 3 0; 3 4 -1; 0 -1 4];
% b = [24 30 -24];
% x0 = [1 1 1];
% tol = 10^-9;
% w = 0.9;
% [aprox_x, n] = exer39(A, b, x0, tol, w)

% w = 1.1;
% [aprox_x, n] = exer39(A, b, x0, tol, w)

