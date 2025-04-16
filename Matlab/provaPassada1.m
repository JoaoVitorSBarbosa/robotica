%% EX.01

F = 0;
a = sym('a');
B = sym('B');
r = sym('r');

H = Rot('z',a) *double(Rot('z',90))* Rot('y',B) * Trans(0,0,r);

disp(H);

alpha = atan2d(-400,50)
beta = atan2d(11.11,1)
r = 300 / cosd(beta)

%% Questao 02
H = [
        0  -0.7 -0.7  300;
        0  0.7  -0.7  -400;
        1  0    -1    25;
        0  0    0     1;
    ];

pc = PC(H,65);

disp(pc);

alpha = atan2d(pc(1,1),pc(2,1))
beta = atan2d(pc(1,1) / cosd(alpha) * pc(3,1),1)