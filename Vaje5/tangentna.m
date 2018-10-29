function [x, X, k] = tangentna(f, df, x0, tol, N)
    % f funkcija, katere niclo iscemo
    % df odvod f
    
    g =@(x) x - f(x)./df(x);
    [x,X,k] = iteracija(g,x0,tol,N);
end