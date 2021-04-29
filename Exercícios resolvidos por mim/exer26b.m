function x = exer26b(A, b)
% x é o vetor com a solução do sistema de equações linear triangular
% superior

% A é a matriz do sistema
% b é o vetor dos termos independentes

n = length(b);

x(n) = b(n) / A(n, n);
somatorio = 0;

for k = n-1:-1:1
    for j = n:-1:k
        somatorio = somatorio + A(k, j)*x(j);
    end
    
    x(k) = (b(k) - somatorio) / A(k, k);
    somatorio = 0;
end

end

