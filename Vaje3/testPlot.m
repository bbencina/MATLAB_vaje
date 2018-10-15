x = linspace(1.93, 2.07, 1000);
p = poly(2 * ones(9,1)); %polinom, ki ima 9-kratno nièlo 2
[P, Q] = horner(p, x);
plot(x, P);