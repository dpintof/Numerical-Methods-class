function posicao_maior_abs = exer27a(v)

n = length(v);
posicao_maior_abs = 1;

for i = 2:n
    if abs( v(i) ) >= abs( v(posicao_maior_abs) );
        posicao_maior_abs = i;
    end
end

end

% Testar
% posicao_maior_abs = exer27a([4 -7 14 -13])

