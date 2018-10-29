function [x,X,k] = metodafdfddf(f, df, ddf, x0, tol, N)
    % f funkcija katere niclo iscemo
    % df odvod f
    % ddf drugi odvod f
    
    g =@(x) x - f(x)./df(x) - (ddf(x).*f(x)^2)./(2 .* df(x)^3);
    [x,X,k] = iteracija(g,x0,tol,N);
end