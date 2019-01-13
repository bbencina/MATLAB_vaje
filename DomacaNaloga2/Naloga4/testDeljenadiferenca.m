X = [0, 0, 1, 2, 2, 3];
% f = @(x) 1/(x+1)
% df = @(x) -1/(x+1)^2
fX = [1, -1, 0.5, 1/3, -1/9, 0.25];

[DD] = deljenadiferenca(X, fX)

% zadnji element DD mora biti -1/72
% res je