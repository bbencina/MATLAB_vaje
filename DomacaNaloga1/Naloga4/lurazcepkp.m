function [L, U, P, Q] = lurazcepkp(A)
    % LU-razcep matrike A kompletno pivotiranje
    
    n = size(A, 1);
    p = 1:n;
    q = 1:n;
    for j=1:(n-1)
        % kompletno pivotiranje
        [e, i_row] = max(abs(A(j:n,j:n)));
        [tmp, s] = max(e);
        v = i_row(s) + j-1;
        s = s+j-1;
        A([j v],:)=A([v j],:);
        A(:,[j s])=A(:,[s j]);
        p([j v])=p([v j]);
        q([j s])=q([s j]);
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
    P = eye(n); P=P(p,:);
    Q = eye(n); Q=Q(:,q);
end