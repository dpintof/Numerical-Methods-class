% Sistema triangular inferior
A = [-13 0 0 0; 13 3 0 0; -5 -1 -1 0; 3 0 1 1];
b = [-13 13 -7 4];
x = exer26a(A, b)

% Sistema triangular superior
A = [1 1 0 3; 0 -1 -1 -5; 0 0 3 13; 0 0 0 -13];
b = [4 -7 13 -13];
x = exer26b(A, b)