%Shear transformation through matrix
sqsize = 60;

I = checkerboard(60,4,4);

fill = 0.6;

% Try varying the definition of T. as shear
T = [1  2  0; 
     3    1  0;
     0    0  1];
 
t_Shear = affine2d(T);
final_img = imwarp(I,t_Shear,'FillValues',fill);

%output formating
subplot(1, 2, 1);
imshow(I);
axis on;
title("orignal image");

subplot(1, 2, 2);
imshow(final_img);
axis on;
title("final image");