f = @(x) 5*cos(x - exp(x)) - x;
a0 = 0;
b0 = 3;

regulafalsi(f, a0, b0)