function res = isMagic(A)
    [m,n] = size(A);
    if m ~= n
        res = 0;
        return;
    end
    po_vrsticah = sum(A, 2);
    po_stolpcih = sum(A,1);
    %nadaljuj
end