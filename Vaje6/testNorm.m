function [sp, dvaNorma, zg] = testNorm(n)
%    A = zeros(n);
%     for i = 1:n
%         A(i, i) = -2*i;
%         if i ~= n
%             A(i, i+1) = n-i;
%         end
%         if i ~= 1
%             A(i, i-1) = n-i+1;
%         end
%     end
    %hitreje:
    A = -2*diag(1:n) + diag(n-1:-1:1,1) + diag(n-1:-1:1,-1);
    disp(A)
    [sp, dvaNorma, zg] = oceneNorm(A)
end