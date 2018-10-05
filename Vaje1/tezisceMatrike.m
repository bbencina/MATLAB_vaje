function [x, y] = tezisceMatrike(A)
    M = sum(sum(A));
    [m, n] = size(A);
    
    x = sum((sum(A, 2))' .* (1:m)) / M;
    y = sum(sum(A, 1) .* (1:n)) / M;
end