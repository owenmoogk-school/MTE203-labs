syms t;

r = [3/2*t; 2*sqrt(3)*t; t^2+3/2*t];

fplot3(r(1), r(2), r(3), [-4,2])

xlabel('X Axis')
ylabel('Y Axis')
zlabel("Z Axis")
title('Drone Path')

