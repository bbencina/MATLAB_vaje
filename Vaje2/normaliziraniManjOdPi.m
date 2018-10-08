[A, B] = seznamZapisa();
count = 0;
m = size(A,1);

for i = 1:m
    row = A(i,:);
    x = B(i);
    if row(2) ~= 0 && x < pi
        count = count +1 ;
    end
end

count