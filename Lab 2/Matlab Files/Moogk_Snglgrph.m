[x,y] = meshgrid(-1.2:0.01:1.2, -1.2:0.01:1.2);

a = 4 .* x.^2 + 2;
b = cos(3.* x.^2 .* y.^2 + x.^2);
c = -(5 - x.^2 ./ 2 - 2.*y.^2 );

z = (-b + sqrt(b.^2 - 4.*a.*c)) ./ (2.*a);

surfc(x,y,z, "FaceColor", "cyan", "FaceAlpha", "0.7")
hold on

[x,z] = meshgrid(-1.2:0.01:1.2, 0.2:0.01:1.5);

y = x

surf(x,y,z, "FaceColor", "yellow", "FaceAlpha", "0.7")

t = linspace(-1.2,1.2,1000)

a = 4 .* t.^2 + 2;
b = cos(3.* t.^2 .* t.^2 + t.^2);
c = -(5 - t.^2 ./ 2 - 2.*t.^2 );

x = t
y = t
z = (-b + sqrt(b.^2 - 4.*a.*c)) ./ (2.*a);


plot3(x,y,z, "r", "linewidth", 10)


xlabel("x")
ylabel("y")
zlabel("z")
title("Graph of Intersection")