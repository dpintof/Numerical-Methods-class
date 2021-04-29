function [U, L] = exer29(A)

n = length(A);
I = eye(n);
i = 1;
U = A;

for j = 1:n-1
    for k = j+1:n
        if not( U(k, j) == 0 )
            miu = U(k, j)/U(j, j);
           
            H = I;
            H(k, :) = H(k, :) + miu*I(j, :);
            
            % Creates a cell whose entry i is matrix H
            % A cell is a vector or matrix whose "members" can be anything:
            % vectors, matrices, strings, etc
            G{i} = H; 
            i = i + 1;
            
            U = inv(H)*U;
        end
    end
end

L = G{1};

for m = 2:i-1
    L = L * G{m};
end

end

% Testar:
% A_ = [1 -1 2 -1; 1 1 1 0; 2 -2 3 -3; 1 -1 4 3];
% [U, L] = exer29(A_)


