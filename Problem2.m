%% Problem 2
% Test haar.m and haar_inv.m on u (below)

%% 2.1 
u = [0 2 4 6 6 4 2 1 -1 -2 -4 -6 -6 -4 -2 0];
haar_coeff = haar(u); 
vector = haar_inv(haar_coeff); 

%% 2.2 
w = [u u u u u u u u];% 8 u's
haar_coeff = haar(w); 
vector = haar_inv(haar_coeff); 

w1 = [u u u u u u u u u]; % 9 u's
haar_coeff = haar(w1); 
vector = haar_inv(haar_coeff); 

% we observe that w1 is not of dimension 2^n, so we cannot compute the haar
% coefficient. 

