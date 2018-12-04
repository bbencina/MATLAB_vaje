%Naloga 4: Krožna matrika

%b)

N = 1000;

brez = zeros(N,1);
delno = zeros(N,1);
kompletno = zeros(N,1);

%generiranje
for i=1:N
    koef_a = rand(10,1);
    A = zeros(10);
    for j=1:10
      A(:,j) = circshift(koef_a, j-1);
    end
    [L,U] = lurazcepbp(A);
    brez(i) = max(max(U))/max(max(A));
    [L,U] = lurazcepdp(A);
    delno(i) = max(max(U))/max(max(A));
    [L,U] = lurazcepkp(A);
    kompletno(i) = max(max(U))/max(max(A));
end

povbp = mean(brez)
povdp = mean(delno)
povkp = mean(kompletno)