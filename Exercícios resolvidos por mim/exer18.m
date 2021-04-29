function [raiz, n, erro_relativo_absoluto] = exer18(a, b, m, f)
% raiz é o valor (aproximado através do método da bisseção) para o qual,
% no intervalo ]a,b[, temos: f(raiz) = 0.

% n é o número de vezes que temos de aplicar o do método da Bisseção se
% queremos um erro relativo absoluto (definido em baixo) inferior a 10^(-m).

% f é uma função a arbitrária a definir que tenha apenas um zero (raiz) no
% intervalo ]a,b[, de acordo com as condições do teorema de Bolzano.

format long

c(1) = (a + b) / 2;

n = ceil((log(b - a) + m * log(10)) / log (2));

for k = 1:n
    if f(c(k)) == 0
        raiz = c(k);
        break
    elseif f(a) * f(c(k)) < 0
        b = c(k);
        c(k+1) = (a + c(k)) / 2;
    else
        a = c(k);
        c(k+1) = (c(k) + b) / 2;
    end
    
raiz = c(k+1);

end

erro_relativo_absoluto = abs((c(k+1) - c(k)) / c(k));

end

% Testar:
% [raiz, n, erro_relativo_absoluto] = exer18(0, 1, 3, @(x) exp(x) - 2)

% Valor exato da raiz:
% log(2)

% Erro relativo absoluto menor que 10^-3? O código deve dar 1, ou seja, verdadeiro:
% erro_relativo_absoluto < 10^-3


