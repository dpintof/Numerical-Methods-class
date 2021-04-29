[x, N] = exer45_nodos(-19, 4, 2);

for j = 1:N+1
    if x(j) <= 0
        f(j) = 1;
    elseif x(j) >= 1
        f(j) = 0;
    else
        f(j) = 2*x(j)^3 - 3*x(j)^2 +1;
    end
end

plot(x, f)
