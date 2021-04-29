% a)
[raiz, n, erro_relativo_absoluto] = exer18(2, 3, 16, @(x) x^2 - 5);
sol_bissecao = raiz
iteracoes_bissecao = n

% b)
[sol, n, erro] = exer22(2.5, @(x) 1 + x - (x^2)/5, 16);
sol_it = sol
iteracoes_it = n

% c)
[sol, n, erro] = exer23(2.5, @(x) x^2 - 5, 16);
sol_Newton = sol
iteracoes_Newton = n