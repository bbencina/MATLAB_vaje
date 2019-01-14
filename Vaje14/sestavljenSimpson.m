function [priblizek] = sestavljenSimpson(a, b, f, m)
    % a, b krajišèi intervala
    % f podana anonimna funkcija katere integral išèemo
    % m poda število delilnih intervalov, ki ga
    %   še enkrat delimo, toèk je torej  (x0,...x2m)
    
    % priblizek je približek integrala funkcije f na [a,b]
    
    h = (b-a)/(2*m);
    fX = zeros(1, 2*m+1);
    for i = 0:2*m
        fX(i+1) = f(a + i*h);
    end
    priblizek = 0;
    for i = 1:m
        priblizek = priblizek + h/3 * (f(a+2*(i-1)*h) + f(a+2*i*h) + 4*f(a+(2*i-1)*h));
    end
end