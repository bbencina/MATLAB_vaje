function res = isMagic(A)
    %velikost
    [m,n] = size(A);
    if m ~= n
        res = 0;
        return;
    end
    
    %vsota po vrsticah in stolpcih
    po_vrsticah = sum(A, 2);
    po_stolpcih = sum(A,1);
    vsota = po_vrsticah(1);
    
    for i = po_vrsticah(:)
        if i ~= vsota
            res = 0;
            return;
        end
    end
    for i = po_stolpcih(:)
        if i ~= vsota
            res = 0;
            return;
        end
    end
    
    %vsota po diagonali
    if vsota ~= sum(diag(A))
        res = 0;
        return;
    end
    %po antidiaonali
    antidiag = A(m:m-1:end-1);
    if vsota ~= sum(antidiag)
        res = 0;
        return;
    end
    
    res=1;
    
end