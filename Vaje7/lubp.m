function [L, U] = lupb(A)
    % LU-razcep matrike A brez pivotiranja
    
    n = size(A, 1);
    for j=1:(n-1)
        for i=(j+1):n
            l = A(i,j) / A(j,j);
            A(i, j) = l;
            for k=(j+1):n
                A(i,k) = A(i, k) - l * A(j,k);
            end
        end
    end
    L = tril(A,-1) + eye(n);
    U = triu(A);
end