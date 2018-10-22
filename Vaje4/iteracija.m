function [x,X,k] = iteracija(g,x0,tol,N)
%izvede navadno iteracijo z dano it. funkcijo in zac. priblizkom
%
%Vhodni podatki:
% g iteracijska funkcija
% x0 zacetni priblizek
% tol toleranca absolutnega ujemanja dveh zaporednih priblizkov
% N maksimalno število korakov
%
%Izhodni podatki:
% x zadnji priblizek izracunan z navadni iteracijo
% X seznam vseh izracunanih priblizkov
% k stevilo opravljenih korakov iteracije

k = 0;
X = [x0];

while 1
    x = g(X(end));
    X = [X x];
    k = k + 1;
    if (k > N || abs(X(end) - X(end-1)) < tol)
        break
    end

end