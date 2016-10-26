%% Problem 4
%% Haar_inv2D function
% The function takes in the matrix T and computes the haar transform 
% using averaging and differencing on each row and then on each column of
% the new matrix.
% first apply haar_inv on the columns and then apply haar_inv on the rows 
% The matrix T 
T = [1212 -306 -146 -54 -24 -68 -40 4;30 36 -90 -2 8 -20 8 -4;-50 -10 -20 -24 0 72 -16 -16;82 38 -24 68 48 -64 32 8; 8 8 -32 16 -48 -48 -16 16;20 20 -56 -16 -16 32 -16 -16;-8 8 -48 0 -16 -16 -16 -16;44 36 0 8 80 -16 -16 0];
P = haar_inv2D(T);
% compares to the matrix by Greg Ames, their matrix element at (3,3) should
% be 1152 rather than 1156 as writen on the paper.
%% origin pic 
clear X map
load('durer', 'X')
Xdurer = X(1:512, :);
Xdurer(:, 510:512) = 50;
figure
colormap(gray)
imagesc(Xdurer)
%% pic after haar transformation 
Xdurer_haar = haar2D(Xdurer);
figure
colormap(gray)
imagesc(Xdurer_haar)
%% compare both pics
% the reconstructed one seems so black!? seem to be more compressed
subplot(1,2,1)
colormap(gray)
imagesc(Xdurer)
subplot(1,2,2)
colormap(gray)
imagesc(Xdurer_haar)
%%



