x0 = 0.9;
h = [10^-9 5*10^-10 2*10^-10 10^-10 5*10^-11 2*10^-11 10^-12];

n = length(h);

% Calcular aproximações de df(0.9) (derivada de f em relação a x avaliada
% no ponto 0.9)
for k = 1:n
    df_aprox(k) = (sin(x0 + h(k)) - sin(x0 - h(k))) / (2 * h(k));
end

df_aprox

% Valor exato de df
df = cos(x0)

% Erros cometido
for k = 1:n
    R(k) = df_aprox(k) - df;
end

R = abs(R)

% Erro mínimo e a sua posição no vetor R
[M,I] = min(R);

"Para que valor de h se observa o menor erro: " + h(I)

