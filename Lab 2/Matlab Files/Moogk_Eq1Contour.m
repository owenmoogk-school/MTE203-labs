[x,y] = meshgrid(-1.2:0.01:1.2, -1.2:0.01:1.2);

a = 4 .* x.^2 + 2;
b = cos(3.* x.^2 .* y.^2 + x.^2);
c = -(5 - x.^2 ./ 2 - 2.*y.^2 );

z = (-b + sqrt(b.^2 - 4.*a.*c)) ./ (2.*a);

[c h] = contour(x,y,z, 8)
clabel(c,h)
xlabel("x")
ylabel("y")
title("Graph of f(x)")