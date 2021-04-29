function [sol, n, erro] = exer22(x0, g, m)
% x0 é o ponto inicial para procurar a solução
% g é a função do método iterativo
% Solução deve ser determinada com erro inferior a 10^-m

x(1) = x0;
x(2) = g(x(1));
erro_max = 10^(-m);
k = 1;
    
while abs((x(k+1) - x(k)) / x(k)) > erro_max
    k = k+1;
    x(k+1) = g(x(k));
end 

sol = x(k+1);
n = k;
erro = abs((x(k+1) - x(k)) / x(k));

end

% Testar
% [sol, n, erro] = exer22(2.5, @(x) 0.5*(x + 5/x), 4)

% Erro relativo absoluto menor que 10^-4? O código deve dar 1, ou seja, verdadeiro:
% erro < 10^-4

