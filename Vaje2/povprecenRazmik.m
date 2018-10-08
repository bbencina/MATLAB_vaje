%raèunamo povpreèen razmik med zaporednimi števili, ki so od pi oddaljena za manj kot 1
[A, B] = seznamZapisa();
m = size(B,2);
zamiki = [];
kPi = []; %števila okrog 5 radij 1

%konstruiramo okolico pi
for i = 1:m
    x = B(i);
    if abs(pi - x) < 1
        kPi = [kPi x];
    end
end


%izraèunamo zamike
n = size(kPi,2);
for j = 2:n
    z = kPi(j) - kPi(j-1);
    zamiki = [zamiki z];
end

sum(zamiki)/(n-1)