%% plf function 

function [xfinal, yfinal] = plf(u)

[~, m] = size(u); 
k = m;
xfinal = [];
yfinal = [];

for i = 1:k
    
x1 = (i - 1)/m;
x2 = i/m;
y1 = u(i);
y2 = u(i); 

xnew = [x1 x2];
ynew = [y1 y2];

xfinal= [xfinal xnew];
yfinal = [yfinal ynew];
end