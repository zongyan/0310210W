clear all;
clc;
a = [0    0    -0.2;
     0   -0.75  0.25;
     0.5 -0.5   0];
b = [0.2; 0 ; 0];
c = [0 0 1];
d = 0;

[n, de] = ss2tf(a, b, c, d);
tf(n, de)

%%
n = [4 3];
de = [40 30 9 3];
[a, b, c, d] = tf2ss(d, de);
ss(a, b, c, d)

%%
help residue;
[r, s, k] = residue(n, de);