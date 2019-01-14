function [priblizek] = sestavljenoTrapezno(a, b, f, m)
    % a, b kraji��i intervala
    % f podana anonimna funkcija katere integral i��emo
    % m poda �tevilo delilnih intervalov (x0,...,xm)
    
    % priblizek je pribli�ek integrala funkcije f na [a,b]
    
    h = (b-a)/m;
    fX = zeros(1, m+1);
    for i = 0:m
        fX(i+1) = f(a + i*h);
    end
    priblizek = (2*sum(fX) - fX(1) - fX(m+1))*h/2;
end