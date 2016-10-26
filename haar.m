%% Haar function
% The function takes in the vector u and computes the haar transform of a
% vector using averging and differencing 

function [haar_coeff] = haar(u, ~)

[~, rows] = size(u); 

%Get number of iterations
n = log2(rows);

%Initial c_old and c_new
c_new = u; 
c_old = c_new; 

%loop through vectors c_old first and then 
% through i elements in c_new
if nargin == 1
for j = (n-1):-1:0
    for i = 1:(2^j)
    c_old(i) = (c_new((2*i)-1) + c_new(2*i))/2; 
    c_old(2^j+i) = (c_new((2*i)-1) - c_new(2*i))/2;
    end
    
    c_new = c_old; 
        
end 
haar_coeff = c_new; 
else 
for j = (n-1):-1:0
    for i = 1:(2^j)
    c_old(i) = (c_new((2*i)-1) + c_new(2*i))/sqrt(2); 
    c_old(2^j+i) = (c_new((2*i)-1) - c_new(2*i))/sqrt(2);
    end
    
    c_new = c_old; 
        
end 
haar_coeff = c_new; 
end 