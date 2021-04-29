function p = exer2a(x, xs, d)
% x é o valor no qual queremos aproximar a função com o Polinómio interpolador 
% xs é um vetor com n pontos xk. k = 1, ..., n.
% d é um vetor com n "dk"s
% p é o valor do Polinómio Interpolador avaliado no ponto x, ou seja P^* (x)

n = size(d, 2);

p = 0;

    for k = n:-1:1
        p = d(k) + (x - xs(k))*(p);
    end
   
end

% Testar:
% x = 3;
% xs = [2 2.75 4];
% d = exer2b2(xs, ys);
% exer2a(x, xs, d)

% Resultado: 0.3295

% Para verificar o resultado (polinómio na forma de Newton):
% d(1) + d(2)*(x-xs(1)) + d(3)*(x-xs(1))*(x-xs(2))


