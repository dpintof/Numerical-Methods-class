xs = [0 1 2 3 4];
ys = [1 0 3 5 8];
m = 2;

n = length(xs);

coef = exer4(xs, ys, m);

for k = 1:n
    p(k) = coef(1) + coef(2)*xs(k) + coef(3)*xs(k)^2;
end

r = 0;

for j = 1:n
    r = r + (p(j) - ys(j))^2;
end

r

% Confirmei o resultado com o que está no exemplo 1.5 do slides