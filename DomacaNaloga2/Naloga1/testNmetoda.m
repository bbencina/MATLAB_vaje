%zacetni približki
tol = 1e-10;
N = 100;
z = @(x, y) 5.*exp(5.*x.*y-10.*x.^2-y.^2);

x1 = -0.25; y1 = 0.6; z1 = z(x1, y1);
[x, X, k] = newtonovametoda(1, 1, [x1, y1, z1], tol, N)

x2 = 0.25; y2 = -0.6; z2 = z(x2, y2);
[x, X, k] = newtonovametoda(1, 1, [x2, y2, z2], tol, N)

x3 = 0.5; y3 = 0.4; z3 = z(x3, y3);
[x, X, k] = newtonovametoda(1, 1, [x3, y3, z3], tol, N)

x4 = -0.5; y4 = -0.4; z4 = z(x4, y4);
[x, X, k] = newtonovametoda(1, 1, [x4, y4, z4], tol, N)

%Komentar: Ker je funkcija newtonovametoda napisana še s starimi argumenti,
% še vedno zahteva, da ji podamo F in DF, ceprav tega nikjer ne uporabi,
% temvec uporablja funkciji generateF in generateDF. Zato sta prva dva argumenta
% v klicu 1, lahko bi bilo karkoli.