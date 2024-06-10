syms a b x y;

numerator = a*y*sin(x*x*y);
denominator = exp(x*y)+(7+y^2)/(x*x*y);
f = numerator / denominator + b *x*x*y;

fx = diff(f, x);
fy = diff(f, y);
fxy = diff(fx, y);
fyx = diff(fy, x);

A = -1;
B = 1;
X = 2;
Y = -2;

disp("Fx at (-1, 1, 2, -2)")
double(subs(fx, [a,b,x,y], [A,B,X,Y]))
disp("Fy at (-1, 1, 2, -2)")
double(subs(fy, [a,b,x,y], [A,B,X,Y]))
disp("Fxy at (-1, 1, 2, -2)")
double(subs(fxy, [a,b,x,y], [A,B,X,Y]))
disp("Fyx at (-1, 1, 2, -2)")
double(subs(fyx, [a,b,x,y], [A,B,X,Y]))


