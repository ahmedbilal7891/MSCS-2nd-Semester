% Usage example - simple translation
load mri.mat
D = squeeze(D(:,:,1,:));
% Create affine transformation matrix, simply shift (x,y) = (50,25)
M = [1 0 0 50; 0 1 0 25; 0 0 1 0; 0 0 0 1];
% Invert M, since the interpolation is backward. Meanwhile subsample the output volume x-direction by a factor of two.
D_new = affine3d(D,inv(M),1:2:128,1:128,1:27);
figure
subplot(1,2,1)
imagesc(D(:,:,10))
title('Original volume')
subplot(1,2,2)
imagesc(D_new(:,:,10))
title('Shifted volume')