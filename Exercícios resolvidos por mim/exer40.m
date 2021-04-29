A = [4 3 0; 3 4 -1; 0 -1 4];
b = [24 30 -24];
x0 = [1 1 1];
tol = 10^-12;
w0 = 0.01;
k = 1;

for w = w0:0.01:1.99
   [aprox_x, n(k)] = exer39(A, b, x0, tol, w);
    k = k + 1;
end

m = length(n);
posicao_menor_w = 1;

for i = 2:m
    if n(i) < n(posicao_menor_w)
        posicao_menor_w = i;
    end
end

w_opt = posicao_menor_w/100
[aprox_x, n] = exer39(A, b, x0, tol, w_opt);
n

[aprox_x, n] = exer39(A, b, x0, tol, 1);
n

