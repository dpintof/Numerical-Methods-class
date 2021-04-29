A = [2 1 -1 1; 1 1 0 3; -1 2 3 -1; 3 -1 -1 2];
n = length(A);
I = eye(n);
C = zeros(n,1);

A_amp = [A I];

for j = 1:n-1 % "j" é a coluna, "k" é a linha
   for k = j+1:n
       if A_amp(j,j) == 0
           A_amp = exer27b(A_amp, k, j);
       end
       
       if not( A_amp(k,j) == 0 ) % caso A(k, j) seja diferente de 0
           i = A_amp(k,j) / A_amp(j,j);
           A_amp(k,:) = A_amp(j,:)*-i + A_amp(k,:);
       end
   end
end

A_condensada = A_amp(:,1:n);

for l = 1:n
    b{l} = A_amp(:,n+l);
    x{l} = exer26b(A_condensada, b{l});
    C = [C transpose(x{l})];
end

A_inv = C(:,2:n+1)
A*A_inv
A*A_inv == eye(n)

