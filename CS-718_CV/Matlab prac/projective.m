%Projective
sqsize = 60;
I = checkerboard(sqsize,4,4);
%nrows = size(I,5);
%ncols = size(I,7);
fill = 0.2;

%imshow(I)
%title('Original')


% Try varying the definition of T. as rotation
T = [1  0  0.0080; 
     0  1  0.0090;
     0  0  1];
%t_aff = affine2d(T);
t_aff = projective2d(T);
I_affine = imwarp(I,t_aff,'FillValues',fill);

axis on
imshow(I_affine)
title('Affine')