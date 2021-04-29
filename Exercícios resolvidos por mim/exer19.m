f = @(x) 2*x + 3*cos(x) - exp(x);
a = 1;
b = 2;

% Verificar que a equação tem uma solução no intervalo [1,2]. O código deve
% dar 1, ou seja, verdadeiro
f(a) * f(b) < 0

% Cálculo da raiz
[raiz, n, erro_relativo_absoluto] = exer18(a, b, 5, f)

% Erro relativo absoluto menor que 10^-5? O código deve dar 1, ou seja, verdadeiro:
% erro_relativo_absoluto < 10^-5