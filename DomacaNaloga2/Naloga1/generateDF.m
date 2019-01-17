function [DF] = generateDF(x, y, z);
  df1x = @(x, y, z) 5.*exp(5.*x.*y-10.*x.^2-y.^2).*(5.*y - 20.*x);
  df1y = @(x, y, z) 5.*exp(5.*x.*y-10.*x.^2-y.^2).*(5.*x - 2.*y);
  df1z = @(x, y, z) -1;
  df2x = @(x, y, z) 2.*x;
  df2y = @(x, y, z) 8.*y;
  df2z = @(x, y, z) 6.*z;
  df3x = @(x, y, z) 4.*x;
  df3y = @(x, y, z) 8.*y;
  df3z = @(x, y, z) -6.*z;
  
  DF = [df1x(x, y, z), df1y(x, y, z), df1z(x, y, z);
        df2x(x, y, z), df2y(x, y, z), df2z(x, y, z);
        df3x(x, y, z), df3y(x, y, z), df3z(x, y, z)];
end