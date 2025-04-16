%% Questão 01

B1 = [
        0  0  0  0;
        0  0  0  0;
        0  0  0  1;
        0  0  0  1;
    ];
Rot4 = Rot('z',-90)
Rot5 = Rot('x',-90)
Trans2 = Trans(1,0,-1)
B = B1 * Trans2 * Rot5 * Rot4

Rot1 = Rot('z',45)
Rot2 = Rot('y',30)
Rot3 = Rot('z',90)
Trans1 = Trans(0,4,2)

N = double(Rot1 * Rot2 * B * Trans1 * Rot3)

%% 1.b

teta = sym('teta');
fi = sym('fi');
psi = sym('psi');


RAG1 = Rot('x',teta) * Rot('y',fi) * Rot('z',psi);

teta = 10;
fi = 20;
psi = 30;

RAG1 = Rot('x',teta) * Rot('y',fi) * Rot('z',psi);
RAG1 = double( RAG1 * Trans(1,2,3))

%% 2


H = [
        0  0  1  573;
        0 -1  0  0;
        1  0  0  440;
        0  0  0  1;
    ];

pc = PC(H,80);

F = [
        0  0  0  3;
        0  0  0  5;
        0  0  0  7;
        0  0  0  1;
    ];

R03 = double(Rot('z',0) * Rot('y',48.25) * Trans(0,0,660.78));

R06 = [0 0 1; 0 -1 0; 1 0 0];
R03 = R03(1:3,1:3);

R36 =  inv(R03) * R06

algo = atan2d(493,440);





