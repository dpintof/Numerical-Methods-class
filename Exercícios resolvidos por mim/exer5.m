x0 = 1.8;
h = [0.1 0.05 0.01];

n = length(h);

% Calcular aproximações de df(1.8) (derivada de f em relação a x avaliada
% no ponto 1.8)
for k = 1:n
    df_aprox(k) = (log(x0 + h(k)) - log(x0)) / h(k);
end

df_aprox

% Valor exato de df
df = 1/1.8

% Tenho o resultado em papel
M = 1/1.8^2;

% Majorantes para os erros
for k = 1:n
    maj(k) = M*h(k)/2;
end

% Erros cometidos
for k = 1:n
    R(k) = abs(df_aprox(k) - df);
end

% Majorantes para erros e erros cometidos
% Função single permite visualizarmos os números com 7 casas decimais
c = [single(maj); single(R)]
