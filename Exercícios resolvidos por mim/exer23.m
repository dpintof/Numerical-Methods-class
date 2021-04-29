function [sol, n, erro] = exer23(w0, f, m)
% sol é a aproximação da solução da equação que queremos resolver
% n é o número de iterações do método de Newton
% erro é o valor do erro relativo absoluto

% w0 é o ponto inicial para procurar a solução
% f é a função cuja raiz estamos a procurar. Ex: @(x) x^2 - 5
% Solução deve ser determinada com erro inferior a 10^-m

format long
w(1) = w0;
syms x

% df é a derivada de f em ordem a x
df = matlabFunction( diff(f(x)) );

% Método de Newton
g = @(x) x - f(x)/df(x);

w(2) = g(w(1));
erro_max = 10^(-m);
k = 1;

while abs((w(k+1) - w(k)) / w(k)) > erro_max
    k = k+1;
    w(k+1) = g(w(k));
end 

sol = w(k+1);
n = k;
erro = abs((w(k+1) - w(k)) / w(k));

end

% Testar
% [sol, n, erro] = exer23(2.5, @(x) x^2 - 5, 4)

% Erro relativo absoluto menor que 10^-4? O código deve dar 1, ou seja, verdadeiro:
% erro < 10^-4

