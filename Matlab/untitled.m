%% Lista 4 questão 02
D01 = Denavit(0,90,9.3,45);
D12 = Denavit(19.1,0,0,90);
D23 = Denavit(19.3,0,0,-70);
D34 = Denavit(3.7,0,0,0);



H = D01 * D12 * D23 * D34
%% Lista 4 questão 03

D01 = Denavit(0,90,9.3,45);
D12 = Denavit(0.1,0,0,90);
D23 = Denavit(0,0,0,-70);
D34 = Denavit(0,0,0,0);
D45 = Denavit(0,0,0,-70);
D56 = Denavit(0,0,0,0);
%% Lista 7 questão 01

D01 = Denavit(50,  -90,   330,   10);
D12 = Denavit(330, 180,   0,     -10);
D23 = Denavit(35, -90,    0,     -10);
D34 = Denavit(0,   90,    -335,  0);
D45 = Denavit(0,  -90,    0,     10);
D56 = Denavit(0,   0,    -80,    0);

H = D01 * D12 * D23 * D34 * D45 * D56

%% Lista 4 questão 04
D01 = Denavit(40,0,0,30);
D12 = Denavit(40,0,0,0);
D23 = Denavit(40,0,0,45);



H = D01 * D12 * D23
%% Lista 4 questão 05
D01 = Denavit(40,0,0,30);
D12 = Denavit(40,0,0,0);
D23 = Denavit(40,0,0,45);



H = D01 * D12 * D23
%% MOTOMAN MH5F
o1 = 25;
o2 = 40;
o3 = 60;
o4 = 90;
o5 = 0;
o6 = 30;

D01 = Denavit(400,  -90,     750,           0);
D12 = Denavit(750,   0,       0,      -90);
D23 = Denavit(250,  -90,       0,           0);
D34 = Denavit(0,   90,  814.40,           0);
D45 = Denavit(0,   90,       0,       90);
D56 = Denavit(175,    0,     0,      0);





H = double(D01 * D12 * D23 * D34 * D45 * D56);
disp(double(H));
%% Euler
f = sym('f');
t = sym('t');
p = sym('p');

E = Rot('z',f) * Rot('y',t) * Rot('z',p)

o = atan2(sqrt(1),0)
%%
H06 = [
        0  -0.7   -0.7    0;
        0  0.7    -0.7    48;
        1  0      0       1025;
        0  0      0       1
];
pc = double(PC(H06,86.5))

%% MOTOMAN UP50N
o1 = -80;
o2 = 0;
o3 = 40;
o4 = 0;
o5 = 0;
o6 = 60;

D01 = Denavit(145,  -90,     540,           o1);
D12 = Denavit(870,   180,       0,      o2 - 90);
D23 = Denavit(110,  -90,       0,           o3);
D34 = Denavit(0,   90,  -1025,           o4);
D45 = Denavit(0,   -90,       0,      o5);
D56 = Denavit(0,    0,     -175,      o6);



H = double(D01 * D12 * D23 * D34 * D45 * D56);
disp(double(H));

%% DUAS JUNTAS

D01 = Denavit(2,   90,       0.3,      90);
D12 = Denavit(1,    0,     0,      -45);

H = D01 * D12