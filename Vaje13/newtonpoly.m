function [px, P] = newtonpoly(X, fX, x)
    % X     seznam interpolacijskih to�k
    % fX    seznam funkcijskih vrednosti v X
    % x     seznam abscis, pri katerih ra�unamo vrednosti polinoma
    
    % px    seznam vrednosti polinoma v x
    
    n = length(X)-1;
    
    % shema deljenih diferenc
    P = zeros(1, n+1);
    dd = fX;
    for i = 2:n+1
        for j = n+1:-1:i
            dd(j) = (dd(j) - dd(j-1))/(X(j)-X(j-i+1));
        end
    end
    P = dd;
    
    % ra�unanje vrednosti polinoma
    % radi bi posplo�ili hornerjev algoritem za newtonovo bazo:
    % b = an
    % i = n-1:-1:0
    %   b = ai + (x-xi)b
    % p(x) = b
    
    b = P(n+1);
    for i = n:-1:1
        b = P(i) + (x-X(i)) .* b;
    end
    px = b;
end