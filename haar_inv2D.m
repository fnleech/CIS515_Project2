
function [] = haar_inv2D()

end 

%% Haar_inv2D function
% The function takes in the matrix T and computes the haar transform 
%using averaging and differencing on each row and then on each column of
%the new matrix.
 
%The matrix T 
T = [1212 -306 -146 -54 -24 -68 -40 4;30 36 -90 -2 8 -20 8 -4;-50 -10 -20 -24 0 72 -16 -16;82 38 -24 68 48 -64 32 8; 8 8 -32 16 -48 -48 -16 16;20 20 -56 -16 -16 32 -16 -16;-8 8 -48 0 -16 -16 -16 -16;44 36 0 8 80 -16 -16 0];
 
%% Haar Inverse 
% the reconstruction of a vector from its Haar coefficients
% function vector = haar_inv(haar_coeff)
 
vector = haar_inv(haar_coeff);
for k=1:length(T(1,:))
    haar_coeff = T(k,:);
end
 
function vector = haar_inv(haar_coeff)
[~, rows] = size(haar_coeff); 
 
%Get number of iterations
n = log2(rows);
 
%Initial u_old and u_new
u_old = haar_coeff;
u_new = u_old; 
 
%loop through u_j vectors first and then 
% through i elements in u_j
for j = 0:n-1
    for i = 1:(2^j)
    u_new(2*i-1) = u_old(i) + u_old(2^j + i); 
    u_new(2*i) = u_old(i) - u_old(2^j + i);
    end
    u_old = u_new; 
end 
% Get original vector back 
vector = u_old; 
end 
