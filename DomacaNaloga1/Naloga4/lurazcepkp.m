function [L, U, P, Q] = lurazcepkp(A)
    % LU-razcep matrike A kompletno pivotiranje
    
    n = size(A, 1);
    P = eye(n);
    Q = eye(n);
    for j=1:(n-1)
        % kompletno pivotiranje
        [e, i_row] = max(max(A(j:n,j:n), [], 2));
        [e, i_col] = max(max(A(j:n,j:n), [], 1));
        i_row = i_row + j - 1;
        i_col = i_col + j - 1;
        A([j i_row],:) = A([i_row j],:);
        A(:,[j i_col]) = A(:,[i_col j]);
        P(:,[j i_row]) = P(:,[i_row j]);
        Q(:,[j i_col]) = Q(:,[i_col j]);
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