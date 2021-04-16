%Rotation
sqsize = 60;
I = checkerboard(sqsize,4,4);
%nrows = size(I,5);
%ncols = size(I,7);
fill = 0.2;

%imshow(I)
%title('Original')

q = 90;

% Try varying the definition of T. as rotation
T = [cos(q)  sin(q)  0; 
     -sin(q)    cos(q)  0;
     0    0  1];
t_aff = affine2d(T);
I_affine = imwarp(I,t_aff,'FillValues',fill);

axis on
imshow(I_affine)
title('Affine')