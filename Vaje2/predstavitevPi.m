[A, B] = seznamZapisa();
m = size(B,2);
spodnji = 0;
zgornji = 0;
res=0;

sez = sort(B);

for i = 1:m
    x = sez(i);
    if x < pi
        continue;
    else
        spodnji = sez(i-1);
        zgornji = sez(i);
        break;
    end
end

if (pi - spodnji) > (zgornji - pi)
    res = zgornji;
else
    res = spodnji;
end

res