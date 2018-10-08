[A, B] = seznamZapisa();
m = size(A,1);

count = 0;
for i = 1:m
    row = A(i,:);
    if row(2) == 0
        count = count + 1;
    end
end

res = count / m