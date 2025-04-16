function PC = PC(matrizEntrada,d6)
%PC Summary of this function goes here
%   Detailed explanation goes here

d06 = matrizEntrada(1:end-1,4);
R06 = matrizEntrada(1:3,1:3);

k = [0;0;1];
PC = d06 - (d6 * R06 * k);

end

