xs = [-0.5; -0.3; 0.1; 0.8; 0.9; 0.5; 0.2; -0.1; -0.3; -0.6];
ys = [-0.3; -0.7; -0.8; -0.7; -0.1; 0.5; 0.6; 0.7; 0.6; 0.2];

A = [xs.^2, xs.*ys, ys.^2, xs, ys];
b = ones(10,1);

x = A\b

hold on
[u, v] = meshgrid(linspace(-1,1,100), linspace(-1,1,100));
contour(u, v, x(1)*u.^2 + x(2)*u.*v + x(3)*v.^2 + x(4)*u + x(5)*v, [1 1]);
scatter(xs, ys, 'markerfacecolor', 'k');
hold off