function [px,qx] = horner(p,x)
% Opis:
%  horner izracuna vrednosti polinoma s Hornerjevim postopkom
%
% Definicija:
%  [px,qx] = horner(p,x)
%
% Vhodna podatka:
%  p    seznam koeficientov polinoma v potencni bazi (po vrsti si sledijo
%       koeficienti od vodilnega do prostega),
%  x    seznam abscis, pri katerih racunamo vrednost polinoma
%
% Izhodna podatka:
%  px   seznam vrednosti polinoma p pri abscisah iz seznama x,
%  qx   seznam ocen za absolutno napako izracuna vrednosti polinoma
%       po Hornerjevem postopku

px = p(1)*ones(size(x));
qx = abs(p(1))*ones(size(x));
ax = abs(x);

n = length(p)-1;
for i = 2:n+1
    px = px.*x + p(i);
    qx = qx.*ax + abs(p(i));
end
u = 2^(-52)/2;
qx = 2*n*u*qx;

end