A = [4, -8, 8, 4; 2, 6, -2, 2; 2, -2, 9, -2; 4, 8, -4, 0];

[lambdas, vects] = qriteracijaA(A, 1e-8);
lambdas
[pravi_vektorji, prave_vrednosti]=eig(A);
prave_vrednosti
vects
pravi_vektorji

%POMEMBNO: Ne dela za toleranco vecjo od 1e-10, saj
%je matrika tedaj polnega ranga