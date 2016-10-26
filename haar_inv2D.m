function [Anew] = haar_inv2D(A)
n = size(A, 2);
Anew = zeros(size(A));
for i = 1:n
    Anew(:, i) = haar_inv(A(:, i)')';
end 
for i = 1:n
    Anew(i, :) = haar_inv(Anew(i, :));
end
