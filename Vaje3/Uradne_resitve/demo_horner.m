% RACUNANJE VREDNOSTI POLINOMA S HORNERJEVIM POSTOPKOM

% polinom p(x) = (x-2)^9
p = poly(2*ones(1,9));

clf

% graf polinoma na intervalu [1.93, 2.07]
subplot(1,2,1);
x = linspace(1.93,2.07,500);
hold on
plot(x,horner(p,x),'b');
plot(x,(x-2).^9,'r','LineWidth',1.5);
hold off
legend('Hornerjev postopek', 'Tocne vrednosti');
title('Graf polinoma na intervalu [1.93, 2.07]');

% relativne napake na intervalu [-2, 7]
subplot(1,2,2);
y = linspace(-2,7,3000);
py = (y-2).^9;
[phy,qhy] = horner(p,y);
hold on
plot(y,log10(qhy./abs(py)));
plot(y,log10(abs(phy-py)./abs(py)),'r.');
hold off
legend('Ocena napake', 'Dejanska napaka');
title('Relativne napake pri Hornerjevem postopku v logaritemski skali');