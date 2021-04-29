function x_inf = exer34(v)

posicao_maior_abs = exer27a(v);
x_inf = abs( v(posicao_maior_abs) );

end

% Testar:
% v = [1 -2 3 -4];
% x_inf = exer34(v)