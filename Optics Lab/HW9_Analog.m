b1 = 0;
b2 = 0;

a1 = 30*10^-9;
a2 = 1.25*10^-16;
a3 = 1.25*10^-25;

A0 =  5*10^3;


sys = tf(1,[a3 a2 a1 1]);

sys_fin = A0 * sys;
fb = bandwidth(sys,-3);
bode(sys_fin)


grid

%% 
b1 = 60*10^-12;
b2 = 5*10^-22;

a1 = 150.5*10^-12;
a2 = 5.5*10^-21;
a3 = 4.13*10^-32;

A0 =  -10;


sys = tf([b2 b1 1],[a3 a2 a1 1]);

sys_fin = A0 * sys;
fb = bandwidth(sys_fin,-3);
bode(sys_fin)
grid
