%% Problem 1
% Takes as input a vector u and plots the corresponding
% function plf(u)

u = [0 2 4 6 6 4 2 1 -1 -2 -4 -6 -6 -4 -2 0];
%% 1.1 
[xfinal, yfinal] = plf(u); 
plot(xfinal, yfinal)

%% Concatenate u 8 and 9 times 
w = [u u u u u u u u];
[xfinal, yfinal] = plf(w); 
plot(xfinal, yfinal)

w = [u u u u u u u u u];
[xfinal, yfinal] = plf(w); 
plot(xfinal, yfinal)
