function [Anew] = haar_inv2D_n(A)
n = size(A, 2);
Anew = zeros(size(A));
for i = 1:n
    Anew(:, i) = haar_inv(A(:, i)', 1)';
end 
for i = 1:n
    Anew(i, :) = haar_inv(Anew(i, :), 1);
end
