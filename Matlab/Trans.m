function matrizResultante = Trans(transx,transy,transz)

% calcula a matriz de transofrmação homogênia do sistema,

% char = eixo onde será feita a rotação
% ang = angulo da rotação


if ~isa(transx, 'sym')
    transx = sym(transx);
end
if ~isa(transy, 'sym')
    transy = sym(transy);
end
if ~isa(transz, 'sym')
    transz = sym(transz);
end

        matrizResultante = [
            1   0     0    transx; % Rotação e translação no eixo X
            0   1     0    transy; % Rotação e translação no eixo Y
            0   0     1    transz; % Rotação e translação no eixo Z
            0   0     0    1  % Linha para garantir homogeniedade
        ];
 
end