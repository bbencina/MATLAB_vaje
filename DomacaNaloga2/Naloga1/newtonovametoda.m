function [x, X, k] = newtonovametoda(F, JF, x0, tol, N)
    % po newtonovi metodi izracuna x
    % X vsi delni približki, k število korakov
    
    X = x0;
    k = 0;
    dx=2*tol*x0+1;
    while 1
        dx = generateDF(X(end,1), X(end,2), X(end, 3))\(-generateF(X(end,1), X(end,2), X(end,3)));
        x = X(end,:) + dx';
        X = [X; x];
        k = k + 1;
        if (k >= N || norm(dx) < tol*norm(x))
            break
        end
    end
end