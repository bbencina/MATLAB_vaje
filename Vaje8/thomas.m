function [x, l, u] = thomas(a, b, c, z)
    % thomas reši sistem za matriko, katere LU-razcep brez pivotiranja
    % obstaja (npr. strogo diagonalno dominantna matrika
    % A ima na diagonali a, na naddiagonali b in na poddiagonali c
    % rešujemo Ax=z
    % l in u sta vektorja, ki doloèata matriki L in U v razcepu brez
    % pivotiranja
    
    n = length(a);
    
    % razcep
    u = ones(n,1);
    l = zeros(n-1,1);
    
    u(1) = a(1);
    for i = 1:n-1
        l(i) = c(i)/u(i);
        u(i+1) = a(i+1) - l(i)*b(i);
    end
    
    % y = Ux, reševanje Ly = z
    y = zeros(n,1);
    y(1) = z(1);
    for i = 2:n
        y(i) = z(i) - l(i-1)*y(i-1);
    end
    
    % reševanje Ux = y
    x = zeros(n,1);
    x(n) = y(n)/u(n);
    for i = (n-1):-1:1
        x(i) = (y(i) - b(i)*x(i+1))/u(i);
    end
end