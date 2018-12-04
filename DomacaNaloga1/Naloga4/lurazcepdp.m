function [L, U, P] = lurazcepdp(A)
    % LU-razcep matrike A
    
    n = size(A, 1);
    P = eye(n);
    for j=1:(n-1)
        % delno pivotiranje
        [e, i_row] = max(A(j:n,j));
        i_row = i_row + j - 1;
        A([j i_row],:) = A([i_row j],:);
        P(:, [j i_row]) = P(:, [i_row j]);
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