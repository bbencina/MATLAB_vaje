function [vrednosti, vektorji] = qriteracijaA(A, tol)
  % Funkcija spremeni matriko A v zg. Hessenbergovo,
  % na njej izvede QR iteracijo z enojnimi premiki
  % zaporedoma po podmatrikah. Tako dobi približke za
  % lastne vrednosti A in nato z inverzno iteracijo
  % izracuna še lastne vektorje za te lastne vrednosti.
  
  % A   matrika n*n
  
  % vrednost  lastne vrednosti matrike A
  % vektorji  lastni vektorji matrike A
  
  % setup
  n = size(A, 1);
  vrednosti = zeros(1, n);
  vektorji = ones(n,n);
  
  % spremenimo A v zg. Hess.
  H = hess(A);
  
  % QR-iteracija za pridobitev l. vrednosti
  for i = 1:n
    d = size(H, 1);
    if d == 1
      vrednosti(i) = H(d, d);
      break;
    end
    while abs(H(d, d-1)) >= (abs(H(d, d)) + abs(H(d-1,d-1)))*tol
      premik = H(d, d);
      [Q, R] = qr(H - premik .* eye(d));
      H = R * Q + premik .* eye(d);
    end
    vrednosti(i) = H(d, d);
    H = H(1:d-1, 1:d-1);
  end
  
  % inverzna iteracija za pridobitev l. vektorjev
  for i = 1:n
    z0 = rand(n,1);
    while 1
      z0
      z1 = (A - vrednosti(i).*eye(n))\z0;
      z1 = z1/norm(z1);
      if abs(norm(z0) - norm(z1)) < tol
        break;
      end
      z0 = z1;
    end
    vektorji(:, i) = z1;
  end
end
