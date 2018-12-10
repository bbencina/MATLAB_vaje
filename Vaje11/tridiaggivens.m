function [x,, M1, M2, z] = tridiaggivens(A, B, C, z)
    %reši tridiagonalno matriko podano s seznami A, B, C z uporabo
    %Givensovih rotacij
    
    %A - glavna diagonala
    %B - prva naddiagonala
    %C - prva poddiagonala
    
    %x reši Ax=z
    
    n = length(A);
    D = zeros(n-2,1);
    
    M1 = diag(A) + diag(B, 1) + diag(C, -1);
    
    %eliminiramo C
    for j=1:n-1
        r = sqrt(A(j)^2 + C(j)^2);
        c = A(j)/r;
        s = C(j)/r;
        A(j) = r;
        C(j) = 0;
        B(j) = c*B(j) + s*A(j);
        A(j+1) = -s*B(j) + c*A(j+1);
        if j ~= n-1
            D(j) = s*B(j+1);
        end
        z(:, [j j+1]) = [c, s; -s, c]*z(:, [j j+1]);
    end
    
    M2 = diag(A) + diag(B, 1) + diag(D, 2) + diag(C, -1);
    
    %obratna substitucija:
    
end