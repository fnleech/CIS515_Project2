%% plf function 
% The plf function 


function xfinal = plf(u)

m = 0;
[~, u] = size(u); 
xfinal = []; 
for i = 1:u

m = m + 1;
x = (i - 1)/m; 

xfinal= [xfinal x];
end