function [x,X,k] = sekantna(f, x0, x1, tol, N)
    % f funkcija, katere niclo iscemo
    % x0, x1 zacetna priblizka
    
    g = @(xr, xrm) xr - (f(xr).*(xr-xrm))./(f(xr)-f(xrm));
    
    k = 0;
    X = [x0 x1];

    while 1
        x = g(X(end), X(end-1));
        X = [X x];
        k = k + 1;
        if (k > N || abs(X(end) - X(end-1)) < tol)
            break
        end

    end
end