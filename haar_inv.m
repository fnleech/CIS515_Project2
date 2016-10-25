%% Haar Inverse 
% the reconstruction of a vector from its Haar coefficients
% function vector = haar_inv(haar_coeff)


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


