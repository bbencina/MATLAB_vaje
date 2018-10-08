function [a] = lowestPrimeMoreThan(n)
    a = n+1;
    while a > n
        if isprime(a)
            return;
        end
        a = a+1;
    end