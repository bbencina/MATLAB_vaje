function [sp, dvaNorma, zg] = oceneNorm(A)
    %funkcija izraèuna 2-normo matrike A in nato najde najboljšo
    %spodnjo in zgornjo oceno z drugimi normami (1, Inf, fro, N_Inf)
    %za 2-normo matrike A
    n = size(A,1);
    
    enaNorma = norm(A,1);
    dvaNorma = norm(A,2);
    infNorma = norm(A, Inf);
    froNorma = norm(A, 'fro');
    NinfNorma = norm(A(:), Inf);
    
    spodnjeOcene = [froNorma/sqrt(n); enaNorma/sqrt(n); infNorma/sqrt(n); NinfNorma];
    zgornjeOcene = [froNorma; sqrt(n)*enaNorma; sqrt(n)*infNorma; n*NinfNorma; sqrt(enaNorma*infNorma)];
    
    sp = max(spodnjeOcene);
    zg = min(zgornjeOcene);
end