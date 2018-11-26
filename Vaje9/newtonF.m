function [y] = newtonF(x, X, Y)
    % x = [alpha, beta]
%     n = length(X);
%     y = zeros(n, 2);
%     for i=1:n
%         s1 = 0;
%         s2 = 0;
%         for j=1:n
%             s1 = s1 + exp(x(2)*X(j)) * (Y(j) - x(1)*exp(x(2)*X(j)));
%             s2 = s2 + x(1)*X(j)*exp(x(2)*X(j))*(Y(j) - x(1)*exp(x(2)*X(j)));
%         end
%         y(i,1) = s1;
%         y(i,2) = s2;
%     end
    
    eb = exp(x(2)*X);
    ebyaeb = eb .* (Y-x(1)*eb);
    
    F(zeros(2, 1);
    F(1) = sum(ebyaeb);
    F(2) = x(1)*X'*ebyaeb;
end