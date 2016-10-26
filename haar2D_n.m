function [ h_transform ] = haar2D_n( A )
% normalized haar transformation 
n = size(A, 2);
h_transform = zeros(size(A));
for i = 1:n
    h_transform(i, :) = haar(A(i, :), 1);
end
for i = 1:n
    h_transform(:, i) = haar(h_transform(:, i)', 1)';
end

