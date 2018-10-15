function [P] = horner(p, x)
    n = size(p, 2);
    m = size(x, 2);
    P = zeros(m,1);
    for j = 1:m;
        y = p(1);
        for i = 2:n
            y = y * x(j) + p(i);
        end
        P(j) = y;
    end
end

