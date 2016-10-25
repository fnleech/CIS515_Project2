%% Problem 2
% Test haar.m and haar_inv.m on u (below)

u = [0 2 4 6 6 4 2 1 -1 -2 -4 -6 -6 -4 -2 0];


haar_coeff = haar(u); 
vector = haar_inv(haar_coeff); 