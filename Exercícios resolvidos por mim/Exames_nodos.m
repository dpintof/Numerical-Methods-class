function [t, h] = Exames_nodos(t0, T, N)

t(1) = t0;
h = (T - t0) / N;

for k = 2:N+1
    t(k) = t(1) + (k-1)*h;
end

end