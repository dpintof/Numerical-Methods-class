function [t, N] = exer45_nodos(t0, T, h)

t(1) = t0;
N = round( (T - t0) / h );
t(N+1) = T;

for k = 2:N
    t(k) = t(1) + (k-1)*h;
end

end