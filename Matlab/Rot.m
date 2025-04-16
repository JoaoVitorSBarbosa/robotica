function matrizResultante = Rot(char, ang)

% calcula a matriz de transofrmação homogênia do sistema,

% char = eixo onde será feita a rotação
% ang = angulo da rotação


if ~isa(ang, 'sym')
    ca = cosd(ang);
    sa = sind(ang);
else
    ca = cos(ang);
    sa = sin(ang);
end

switch char
    case 'x'
        matrizResultante = [
            1   0     0     0; % Rotação e translação no eixo X
            0   ca    -sa   0; % Rotação e translação no eixo Y
            0   sa    ca    0; % Rotação e translação no eixo Z
            0   0     0     1  % Linha para garantir homogeniedade
        ];
    case 'y'
        matrizResultante = [
            ca     0       sa        0;
            0      1       0         0;
            -sa    0       ca        0;
            0      0       0         1
            ];

    case 'z'
        matrizResultante = [
            ca    -sa   0        0;
            sa    ca    0        0;
            0     0     1        0;
            0     0     0        1
            ];
    otherwise
        disp('Não existe esse eixo');
        return;
end