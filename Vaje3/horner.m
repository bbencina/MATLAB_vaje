function [Px, Qx] = horner(p, x)
    % Px bodo vrednosti polinoma in Qx ocena napake pri Hornerju
    n = size(p, 2);
    m = size(x, 2);
    Px = zeros(m,1);
    Qx = zeros(m,1);
    u = 0.5 * 2 ^ (1 - 53);
    for j = 1:m;
        y = p(1);
        for i = 2:n
            y = y * x(j) + p(i);
        end
        Px(j) = y;
        
        q = 0;
        for i = 1:n
            q = q + abs(p(i) * x(j)^(n-i));
        end
        Qx(j) = 2 * (n-1) * u * q;
    end
end

