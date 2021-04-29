function [aprox_x, n] = exer35(A, b, x0, tol)

aprox_x{1} = x0;
n = length(A);
I = eye(n);
D = I;

for k = 1:n
    D(k, k) = A(k, k);
end

aprox_x{2} = transpose( (I - inv(D)*A) * transpose(aprox_x{1}) + inv(D)*transpose(b) );
k = 1;

while abs( exer34( aprox_x{k+1} - aprox_x{k} ) / exer34( aprox_x{k+1} ) ) > tol
    k = k + 1;
    aprox_x{k+1} = transpose( (I - inv(D)*A) * transpose(aprox_x{k}) + inv(D)*transpose(b) );
end 

n = k;
aprox_x = aprox_x{k+1};

end

% Testar:
% A = [4 1 1 0 1; -1 -3 1 1 0; 2 1 5 -1 -1; -1 -1 -1 4 0; 0 2 -1 1 4];
% b = [6 -2 6 1 6];
% x0 = [0 0 0 0 0];
% tol = 10^-9;
% [aprox_x, n] = exer35(A, b, x0, tol)


