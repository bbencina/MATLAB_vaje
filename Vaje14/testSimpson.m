a = 0; b = 3;
f = @(x) exp(-x^2);

for k = 0:5
    disp(k);
    m = 3*k+1;
    s = sestavljenSimpson(a, b, f, m);
    disp(s);
    delta = abs(sqrt(pi)*erf(3)/2 - s);
    disp(delta);
end