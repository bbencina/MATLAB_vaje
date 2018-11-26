function [x, X, k] = newton(F, JF, x0, tol, N)
    % po newtonovi metodi izra�una x
    % X vsi delni pribli�ki, k �tevilo korakov
    
    X = [x0];
    k = 0;
    while 1:
        dx = JF(X(end))\(-F(X(end)));
        x = X(end) + dx;
        X = [X x];
        k = k + 1;
        if (k > N || norm(X(end) - X(end-1)) < tol)
            break
        end
    end
end