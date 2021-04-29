function A = exer27b(A, k, l)

B = A(k,:);
A(k,:) = A(l,:);
A(l,:) = B;

end

% Testar
% A = [1 1 0 3; 0 -1 -1 -5; 0 0 3 13; 0 0 0 -13];
% A = exer27b(A, 1, 3);