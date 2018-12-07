function [px] = hornerMantisa(p, x, m)
% Opis:
%  hornerMantisa izracuna vrednosti polinoma s Hornerjevim postopkom pri izbrani
%  dolžini mantise
%
% Definicija:
%  [px] = hornerMantisa(p,x)
%
% Vhodni podatki:
%  p    seznam koeficientov polinoma v potencni bazi (po vrsti si sledijo
%       koeficienti od vodilnega do prostega),
%  x    seznam abscis, pri katerih racunamo vrednost polinoma,
%
%  m    dolžina mantise.
%
% Izhodni podatki:
%  px   seznam vrednosti polinoma p pri abscisah iz seznama x.


px = p(1)*ones(length(x));

n = length(p);
for i = 2:n
    px = px.*x + p(i);
end

for i = 1:length(x)
  % za zaganjanje v Octave-u zakomentiraj te del!
  N = num2str(px(i), m);
  N = str2num(N);
  %px(i) = round(px(i), m, 'significant');
  px(i) = N;
end

end