function [aprox_x, n] = exer36(A, b, x0, tol)

aprox_x{1} = x0;
n = length(A);
I = eye(n);
M = A;

for k = 1:n-1
    for j = k+1:n
        M(k, j) = 0;
    end
end

N = A;

for k = 1:n
    for j = 1:k
        N(k, j) = 0;
    end
end

N = -N;
 
aprox_x{2} = inv(M)*N * transpose(aprox_x{1}) + inv(M)*transpose(b);
k = 1;

while abs( exer34( aprox_x{k+1} - aprox_x{k} ) / exer34( aprox_x{k+1} ) ) > tol
    k = k + 1;
    aprox_x{k+1} = inv(M)*N * aprox_x{k} + inv(M)*transpose(b);
end 

n = k;
aprox_x = transpose( aprox_x{k+1} );

end

% Testar:
% A = [4 1 1 0 1; -1 -3 1 1 0; 2 1 5 -1 -1; -1 -1 -1 4 0; 0 2 -1 1 4];
% b = [6 -2 6 1 6];
% x0 = [0 0 0 0 0];
% tol = 10^-9;
% [aprox_x, n] = exer36(A, b, x0, tol)


