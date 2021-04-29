x = 0.05;
xs = [-2 -1 0 1 2 3];
ys = [1 4 11 16 13 -4];

p = exer2c(x, xs, ys)

plot(xs, ys, "+r", x, p, 'o')
