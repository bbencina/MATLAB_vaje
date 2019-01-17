hold on

[X,Y] = meshgrid(-5:0.1:5,-5:0.1:5);

Z1 = 5.*exp(5.*X.*Y - 10.*X.^2 - Y.^2);

surf(X, Y, Z1, 'EdgeColor', 'green');

% elipsoid
% x^2 + 4*y^2 + 3*z^2 = 4
theta = linspace(-pi/2, pi/2, 100);
phi = linspace(0, 2*pi, 100);
[PHI, THETA] = meshgrid(phi, theta);
xunit = 2.*cos(PHI).*cos(THETA);
yunit = sin(PHI).*cos(THETA);
zunit = (2/sqrt(3)).*sin(THETA);
surf(xunit, yunit, zunit, 'EdgeColor', 'blue');

% hiperboloid
xh = 0.5.*cos(PHI).*cosh(THETA);
yh = 0.5.*sin(PHI).*cosh(THETA);
zh = -(2/sqrt(3)).*sinh(THETA);
surf(xh, yh, zh, 'EdgeColor', 'red');

view(3)
hold off
