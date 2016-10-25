%% Haar function
% The function takes in the vector u and computes the haar transform of a
% vector using averging and differencing 

function [haar_coeff] =haar(w1)

[~, rows] = size(w1); 

%Get number of iterations
n = log2(rows);

%Initial c_old and c_new
c_new = w1; 
c_old = c_new; 

%loop through vectors c_old first and then 
% through i elements in c_new
for j = (n-1):-1:0
    for i = 1:(2^j)
    c_old(i) = (c_new((2*i)-1) + c_new(2*i))/2; 
    c_old(2^j+i) = (c_new((2*i)-1) - c_new(2*i))/2;
    end
    
    c_new = c_old; 
        
end 
haar_coeff = c_new; 
end 



% function [haar_coeff] =haar(u

% 
% haar_coeff = []; 
% [~, m] = size(u); 
% 
% %number of rounds of differencing 
% n = m/2;
% 
% for h = 1:n-1
%     a = 1; % Index for average
%     c = []; 
%     d = [];
%     [~, m] = size(u);
%     for i = 1:2:m-1;
%         %average
%         c(a) = (u(i) + u(i+1))/2;
%         %difference 
%         d(a) = (u(i) - u(i+1))/2;
%         a = a + 1; 
%     end 
%     
%     if h == n-1;
%     haar_coeff = [c d haar_coeff];   
%     else 
%     haar_coeff = [d haar_coeff]; 
%     end 
%     
%     u = [c]; 
% end 
% end 