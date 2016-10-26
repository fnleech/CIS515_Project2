%% Haar 2D
% the method for computing the Haar transform of a 
% matrix 
function [h_transform] = haar2D(A)
n = size(A, 2);
h_transform = zeros(size(A));
for i = 1:n
    h_transform(i, :) = haar(A(i, :));
end
for i = 1:n
    h_transform(:, i) = haar(h_transform(:, i)')';
end