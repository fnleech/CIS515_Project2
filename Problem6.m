%%haar step transformation for 2D
%% origin pic 
clear X map
load('durer', 'X')
Xdurer = X(1:512, :);
Xdurer(:, 510:512) = 50;
figure
colormap(gray)
imagesc(Xdurer)
%% pic after haar transformation 

%% when run 1 round 
Xdurer_haar = haar2D_step(Xdurer, 2);
figure
colormap(gray)
imagesc(Xdurer_haar)

%% when run 2 round 
Xdurer_haar = haar2D_step(Xdurer, 3);
figure
colormap(gray)
imagesc(Xdurer_haar)

%% when run 3 round 
Xdurer_haar = haar2D_step(Xdurer, 4);
figure
colormap(gray)
imagesc(Xdurer_haar)

%% compare all pics
% the reconstructed one seems so black!? seem to be more compressed
subplot(2,2,1)
colormap(gray)
imagesc(Xdurer)
title('origin image')
subplot(2,2,2)
colormap(gray)
imagesc(haar2D_step(Xdurer, 2))
title('1 round')
subplot(2,2,3)
colormap(gray)
imagesc(haar2D_step(Xdurer, 3))
title('2 round')
subplot(2,2,4)
colormap(gray)
imagesc(haar2D_step(Xdurer, 4))
title('3 round')
%%