[x,z] = meshgrid(-1.2:0.01:1.2, 0.2:0.01:1.5);

y = x

surf(x,y,z, "FaceColor", "yellow", "FaceAlpha", "0.7")
xlabel("x")
ylabel("y")
zlabel("z")
title("Graph of f(x)")