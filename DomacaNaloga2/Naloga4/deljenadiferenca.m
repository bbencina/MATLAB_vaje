function [DD] = deljenadiferenca(X, fX)
  % X   interpolacijske tocke (v X naj bodo iste
  %     tocke na zaporednih mestih
  % fX  vrednosti funkcije f v X, ce se kakšna
  %     tocka pojavi veckrat, je namesto vrednosti
  %     funkcije notri vrednost zaporednega odvoda
  
  % DD  deljena diferenca za vektor X na f
  
  n = length(X) - 1;
  
  DD = zeros(1, n+1);
    DD = fX;
    temp=fX(1);
    for k = 2:n+1
      if X(k) == X(k-1)
        DD(k) = temp;
      else
        temp = fX(k);
      end
    end
    for i = 2:n+1
        for j = n+1:-1:i
          if X(j) ~= X(j-i+1)
            DD(j) = (DD(j) - DD(j-1))/(X(j)-X(j-i+1));
          end
          if X(j) == X(j-i+1)
            disp("enak");
            for stevec=1:n+1
              if X(stevec) == X(j)
                DD(j) = fX(stevec + i-1)/factorial(i-1);
                break
              end
            end
          end
        end
    end
end
