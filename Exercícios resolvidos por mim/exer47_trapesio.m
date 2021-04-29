function w = exer47_trapesio(f, t0, T, x0, h)

[t, N] = exer45_nodos(t0, T, h);

w(1) = x0;

% Se calhar tenho de ter F em ordem a x e não a w, pois a minha função para
% o método de Newton usa x.

% Onde tenho w(k+1) acho que tenho de ter só a variável (w, x ou o q seja).
F = @(w) w(k+1) - w(k) + h/2 * ( f(t(k), w(k)) + f(t(k+1), w(k+1)) );
m = 4;

for k = 1:N
    % Aqui vou ter um problema pois F inclui a função f. Portanto não é
    % trivial calcular a derivada de F em ordem a x. 
    [sol, n, erro] = exer23(0, F, m);
    w(k+1) = sol;
end

end

