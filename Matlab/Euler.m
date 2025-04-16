function result = Euler(r33,matriz);

% Caso 1: r33 +/- 1

% teta = 0, fi e psi são complementares
% fi + psi = atan2(r21,r11);

% Caso 2: r33 > 1

if(or(r33 == 1,r33 == -1))
        
        result(1) = 0;
        result(2) = atan2d(matriz(2,1),matriz(1,1));

    else
        result(1) = atan2d(sqrt(1-matriz(3,3)^2), matriz(3,3));
        result(2) = atan2d(matriz(2,3), matriz(1,3));
        result(3) = atan2d(-matriz(3,2), matriz(3,1));

    end

end