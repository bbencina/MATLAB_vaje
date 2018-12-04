%Naloga 4: Krožna matrika

%a)

koef_a = (1:10)';
A = zeros(10);
for i=1:10
  A(:,i) = circshift(koef_a, i-1);
end

norm1 = norm(A, 1)
norm2 = norm(A, 2)
normInf = norm(A, Inf)
normFro = norm(A, 'fro')
