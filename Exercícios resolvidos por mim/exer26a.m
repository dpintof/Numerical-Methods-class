function x = exer26a(A, b)
% x é o vetor com a solução do sistema de equações linear triangular inferior
% A é a matriz do sistema
% b é o vetor dos termos independentes

n = length(b);

x(1) = b(1) / A(1, 1);
somatorio = 0;

for k = 2:n
    for j = 1:k-1
        somatorio = somatorio + A(k, j)*x(j);
    end
    
    x(k) = (b(k) - somatorio) / A(k, k);
    somatorio = 0;
end

end

% Teste feito no exercício 26c