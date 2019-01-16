hold on
[X,Y] = meshgrid(-5:0.1:5,-5:0.1:5);

Z1 = 5.*exp(5.*X.*Y - 10.*X.^2 - Y.^2);
%surf(X, Y, Z);

%[x, y, z] = ndgrid(-5:0.1:5, -5:0.1:5, -5:0.1:5);
%f = x.^2 + 4.*y.^2 + 3.*z.^2;
%isosurface(-5:0.1:5, -5:0.1:5, -5:0.1:5, f, -4);

[X, Y, Z] = meshgrid(-5:0.1:5,-5:0.1:5,-5:0.1:5);
a=1;
b=1;
c=1;
V = X.^2/a^2 + Y.^2/b^2 - Z.^2/c^2;
p=patch(isosurface(X,Y,Z,V,1)); % This is the key step. It involves getting the part of the volume corresponding to the surface defined by the equation
set(p,'FaceColor','red','EdgeColor','none');
daspect([1 1 1])
view(3);
camlight
hold off