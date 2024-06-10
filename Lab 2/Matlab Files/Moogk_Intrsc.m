t = linspace(-1.2,1.2,1000)

a = 4 .* t.^2 + 2;
b = cos(3.* t.^2 .* t.^2 + t.^2);
c = -(5 - t.^2 ./ 2 - 2.*t.^2 );

x = t
y = t
z = (-b + sqrt(b.^2 - 4.*a.*c)) ./ (2.*a);


plot3(x,y,z, "b--")
xlabel("x")
ylabel("y")
zlabel("z")
title("Graph of f(x)")