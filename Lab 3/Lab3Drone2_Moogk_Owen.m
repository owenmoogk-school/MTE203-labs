syms t;

r = [3/2*t; 2*sqrt(3)*t; t^2+3/2*t];

velocity = diff(r, t);
velocityMagnitude = norm(velocity);
s = int(velocityMagnitude, t);
sAt2 = subs(s, t, 2);
double(sAt2)

T = velocity / velocityMagnitude;
k = 1/velocityMagnitude * norm(diff(T, t));
kAt2 = subs(k, t, 2);
double(kAt2)

pAt2 = double(1/kAt2)


acceleration = diff(velocity, t);
accelerationT = dot(acceleration, T);
accelerationN = sqrt(norm(acceleration) ^ 2 - accelerationT^2);

accelerationTAt2 = subs(accelerationT, t, 2)
accelerationNAt2 = subs(accelerationN, t, 2)

disp("Acceleration T")
double(accelerationTAt2)
disp("Acceleration N")
double(accelerationNAt2)

accelerationMagnitude = norm(acceleration)


% Create a figure with 5 subplots
figure;

% 1st subplot: Path r(t)
subplot(3, 1, 1);
fplot3(r(1), r(2), r(3), [-4, 4]);
xlabel('X Axis');
ylabel('Y Axis');
zlabel('Z Axis');
title('Drone Path');

% 2nd subplot: Arc length s(t)
subplot(3, 2, 3);
fplot(t, s, [-4, 4]);
xlabel('t');
ylabel('s(t)');
title('Arc Length s(t)');

% 3rd subplot: Curvature k(t)
subplot(3, 2, 4);
fplot(t, k, [-4, 4]);
xlabel('t');
ylabel('k(t)');
title('Curvature \kappa(t)');

% 4th subplot: Tangential component of the acceleration a_T(t)
subplot(3, 2, 5);
fplot(t, accelerationT, [-4, 4]);
xlabel('t');
ylabel('a_T(t)');
title('Tangential Component of Acceleration a_T(t)');

% 5th subplot: Normal component of the acceleration a_N(t)
subplot(3, 2, 6);
fplot(t, accelerationN, [-4, 4]);
xlabel('t');
ylabel('a_N(t)');
title('Normal Component of Acceleration a_N(t)');

% Show the figure
sgtitle('Drone Path and Characteristics');