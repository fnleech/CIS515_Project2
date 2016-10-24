%% Problem 1
% Takes as input a vector u and plots the corresponding
% function plf(u)

%% 1.1 
yfinal = u;
xfinal = plf(u); 
plot(xfinal, yfinal)

%% Concatenate u 8 and 9 times 
w = [u u u u u u u u];
yfinal = w;
xfinal = plf(w); 
plot(xfinal, yfinal)

w = [u u u u u u u u u];
yfinal = w;
xfinal = plf(w); 
plot(xfinal, yfinal)
