function [A, B] = seznamZapisa()
    % A je seznam elementov P(5, 4, -5, 5)
    % B je seznam teh elementov v desetiškem zapisu
    A = [];
    B = [];
    for p = 0:1
        for i = 0:4
            for j = 0:4
                for k = 0:4
                    for l = 0:4
                        for e = -5:5
                            if i == 0 && j == 0 && k == 0 && l == 0
                                continue;
                            end
                            if i == 0 && e ~= -5
                                continue;
                            end
                            x = [p i j k l e];
                            A = [A ; x];
                            dx = (-1)^p * (i*5^(-1) + j*5^(-2) + k*5^(-3) + l*5^(-4)) * 5^e;
                            B = [B dx];
                        end
                    end
                end
            end
        end
    end

end