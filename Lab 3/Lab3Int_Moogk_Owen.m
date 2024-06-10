syms t;

g = 5*t^3 - 3*t^2;

u = [2*t; t; -t^2];
v = [1; -t^2; 2*t^2];

f = 2*g*(u+v);

F = int(f, t);

