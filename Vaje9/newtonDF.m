function [M] = newtonDF(x, X, Y)
    % x = [alpha, beta]
    
    eb = exp(x(2)*X);
    xeby2aeb = X .* eb .* (Y - 2*x(1)*eb);
    
    DF = zeros(2);
    DF(1,1) = -sum(eb.^2);
    DF(1,2) = sum(xeby2aeb);
    DF(2,1) = DF(1,2);
    DF(2,2) = x(1)*X'*xeby2aeb;
    M = DF;
end