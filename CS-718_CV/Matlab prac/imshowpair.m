%image comparision imshowpair
A = imread('cameraman.tif');
T = [1 0 0;0 1 0;200 0 1];
%tform_t = affine2d(T);

t_nonsim = affine2d(T);
I_nonreflective_similarity = imwarp(A,t_nonsim, 'FillValues',fill);

imshow(I_nonreflective_similarity);
title('Nonreflective Similarity')


%imshow(A);