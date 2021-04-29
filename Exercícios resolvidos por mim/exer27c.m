function x = exer27c(A, b)

n = length(b);
N = size(A, 2);
A(:, N+1) = transpose(b); % Matriz ampliada do sistema

for j = 1:n-1 % "j" é a coluna, "k" é a linha
   for k = j+1:n
       if A(j,j) == 0
           A = exer27b(A, k, j);
       end
       
       if not( A(k,j) == 0 ) % caso A(k, j) seja diferente de 0
           i = A(k,j) / A(j,j);
           A(k,:) = A(j,:)*-i + A(k,:);
       end
   end
end

b = A(:,N+1);
A = A(:,1:N);
x = exer26b(A, b);

end

% Testar
% A = [1 -1 2 -1; 2 -2 3 -3; 1 1 1 0; 1 -1 4 3];
% b = [-8 -20 -2 4];
% x = exer27c(A, b)

