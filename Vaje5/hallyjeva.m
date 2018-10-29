function [x, X, k] = hallyjeva(f, df, ddf, x0, tol, N)
    % f funkcija katere niclo iscemo
    % df odvod f
    % ddf drugi odvod f
    
    g = @(x) x - (2 .* f(x) .* df(x))./(2.*df(x)^2 - f(x).*ddf(x));
    [x,X,k] = iteracija(g,x0,tol,N);
end