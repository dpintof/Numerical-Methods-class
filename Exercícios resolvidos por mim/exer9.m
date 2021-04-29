function aprox_int = exer9(a, b, n)
% a is the integral's lower bound
% b is the integral's upper bound
% n is the number of sub intervals, of equal length, of the interval [a,b]

% aprox_int is the approximation of the integral of f (defined in func.m)
% between a and b, using the composed trapezoidal rule

% The difference between values of the sub intervals
h = (b - a) / n;

% sum é o somatório que aparece na fórmula da regra do trapésio composta
sum = 0;

    for j = 1:n-1
        sum = sum + func(a + j*h);
    end

aprox_int = (func(a) + 2*sum + func(b)) * h/2;
    
end

% Testar:
% aprox_int = exer9(2, 5, 3)

% Resultado:
% 152.5848

% Confirmar resultado:
% a = 2;
% b = 5;
% n = 3;
% h = (b - a) / n;
% (func(a) + 2*(func(a + h)+func(a + 2*h)) + func(b)) * h/2

% Valor exato: 141.024103003646


