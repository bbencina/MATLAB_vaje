function F = generateF(x, y, z)
  f1 = @(x, y, z) 5.*exp(5.*x.*y-10.*x.^2-y.^2) - z;
  f2 = @(x, y, z) x.^2 + 4.*x.^2 + 3.*z.^2 - 4;
  f3 = @(x, y, z) 4.*x.^2 + 4.*y.^2 - 3.*z^2 - 1;
  F = [f1(x, y, z);
       f2(x, y, z);
       f3(x, y, z)];
end