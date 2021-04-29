function aprox_int = exer10(a, b, n)
% a is the integral's lower bound
% b is the integral's upper bound
% 2n is the number of sub intervals, of equal length, of the interval [a,b]

% aprox_int is the approximation of the integral of f (defined in func.m)
% between a and b, using the composed Simpson's rule

% The difference between values of the sub intervals
h = (b-a) / (2*n);

% sum_even é o somatório dos f(x_2j)
sum_even = 0;

    for j = 1:n-1
        sum_even = sum_even + func(a + 2*j*h);
    end

% sum_odd é o somatório dos f(x_(2j-1))
sum_odd = 0;
   
    for j = 1:n
        sum_odd = sum_odd + func(a + ((2*j)-1)*h);
    end

aprox_int = h/3 * (func(a) + 2*sum_even + 4*sum_odd + func(b));
    
end

% Testar:
% aprox_int = exer10(2, 5, 3)

% Resultado:
% 141.0716

% Confirmar resultado:
% a = 2;
% b = 5;
% n = 3;
% h = (b-a) / (2*n);
% h/3 * (func(a) + 2*(func(a + 2*h) + func(a + 4*h)) + 4*(func(a + h) + func(a + 3*h) + func(a + 5*h)) + func(b))

% Valor exato: 141.024103003646


