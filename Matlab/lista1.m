%% EX 8

F = [
        0.527  -0.574 0.628  5;
        0.369  0.819  0.439  3;
        -0.766 0      0.643  8;
        0      0      0      1;
    ];
R = trans(0,10,0) * trans(0,0,5) * F;

disp(double(R));

%% Ex9
F = [
        0  0  0  3;
        0  0  0  5;
        0  0  0  7;
        0  0  0  1;
    ];
R = trans(2,3,4) * F;

disp(double(R));

%% Ex10
F = [
        0  1  0  2;
       -1  0  0  4;
        0  0 -1  6;
        0  0  0  1;
    ];
R = trans(5,2,6) * F;

disp(double(R));

%% Ex11
F = [
        0  0  0  1;
        0  0  0  2;
        0  0  0  3;
        0  0  0  1;
    ];
R =   double(Rot('y',60)) * double(Rot('z',30)) * F;

disp(R);

%% Questao 13

F = [
        0  1  0  1;
        1  0  0  1;
        0  0 -1  1;
        0  0  0  1;
    ];
R =  Rot('y',90) * Rot('z',90) * F * Trans(3,5,0) * Rot('x',90);

disp(double(R));
