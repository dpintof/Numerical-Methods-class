function p = exer2c(x, xs, ys)
% x é o valor no qual queremos aproximar a função com o Polinómio
% interpolador. Tem de respeitar x1 <= x <= xn
% xs é um vetor com n pontos xk. 
% ys é um vetor com n valores f(xk)
% k = 1, ..., n.
% p é o valor do Polinómio Interpolador avaliado no ponto x, ou seja P^* (x)

d = exer2b2(xs, ys);

n = size(d, 2);

p = 0;

    for k = n:-1:1
        p = d(k) + (x - xs(k))*(p);
    end
   
end

% Testar:
% x = 3;
% xs = [2 2.75 4];
% ys = [1/2 1/2.75 1/4];
% exer2c(x, xs, ys)

% Resultado: 0.3295

% Para verificar o resultado (polinómio na forma de Newton):
% d(1) + d(2)*(x-xs(1)) + d(3)*(x-xs(1))*(x-xs(2))



