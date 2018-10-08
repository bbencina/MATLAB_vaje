function [a] = highestPrimeLessThan(n)
    if n <= 2
        a = 0;
        return;
    end
    
    a = 0;
    for i = 2:(n-1)
        if isprime(i)
            a = i;
        end
    end
end