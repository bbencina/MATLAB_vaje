n = 10000;

a = 2 + rand(1,n);
b = rand(1,n-1);
c = rand(1, n-1);

tic;
A = diag(a) + diag(b, 1) + diag(c, -1);
toc

z = rand(n,1);
tic;
[x, l, u] = thomas(a, b, c, z);
toc
l;
u;
x;
tic;
t = A\z;
toc