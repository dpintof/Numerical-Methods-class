xs = [0 0.25 0.5 0.75 1];
ys = [1 1.284 1.6487 2.117 2.7183];
m = 2;

n = length(xs);

coef = exer4(xs, ys, m);

for k = 1:n
    p(k) = coef(1) + coef(2)*xs(k) + coef(3)*xs(k)^2;
end

plot(xs, ys,'r+', xs, p, 'o')

