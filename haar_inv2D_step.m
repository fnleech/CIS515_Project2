function [ Anew ] = haar_inv2D_step( A, k )
n = size(A, 2);
Anew = zeros(size(A));
for i = 1:n
    Anew(:, i) = haar_inv_step(A(:, i)', k)';
end 
for i = 1:n
    Anew(i, :) = haar_inv_step(Anew(i, :), k);
end
