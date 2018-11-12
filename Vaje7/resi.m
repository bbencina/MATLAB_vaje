function [x] = resi(A, b)
    % funkcija reši sistem enaèb Ax=b z uporabo LU-razcepa brez
    % pivotiranja, torej funkcije lubp
    
    n = size(A,1);
    [L,U] = lubp(A);
    
    %reši Ly=b s premo substitucijo
    y = zeros(n,1);
    for i=1:n
        y(i) = b(i) - L(i,:)*y;
    end
    
    %reši Ux=y z obratno substitucijo
    x = zeros(n,1);
    for i=n:-1:1
        x(i) = y(i) - U(i,:)*x;
        x(i) = x(i) / U(i,i);
    end
end