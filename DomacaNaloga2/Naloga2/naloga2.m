% extract information from file
fid = fopen('data.txt');
tline = fgetl(fid);
x = zeros(1,1);
y = zeros(1,1);
while ischar(tline)
  dat = sscanf(tline, '%f');
  x = [x; dat(3)];
  y = [y; dat(4)];
  tline = fgetl(fid);
end
n = length(x);
x = x(2:n, :);
y = y(2:n, :);
n = n-1;
fclose(fid);

% construct matrix A for function
% f = @(x) a + b*x + c*x^2 + d*sin(2*pi*x) + e*cos(2*pi*x)
A = ones(n, 5);
for i = 1:n
  A(i,2) = x(i);
  A(i,3) = x(i)^2;
  A(i,4) = sin(2*pi*x(i));
  A(i,5) = cos(2*pi*x(i));
end

% r = [a;b;c;d;e]
r = (A' * A)\(A' * y);

%risanje
hold on
plot(x,y);

f = @(x) r(1) + r(2)*x + r(3)*x^2 + r(4)*sin(2*pi*x) + r(5)*cos(2*pi*x);
fx = zeros(1, n);
for i = 1:n
  fx(i) = f(x(i));
end
plot(x,fx);
hold off