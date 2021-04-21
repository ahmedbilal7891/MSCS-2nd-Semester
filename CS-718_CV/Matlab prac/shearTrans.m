%Shear
sqsize = 60;
I = checkerboard(sqsize,4,4);

fill = 0.2;




% Try varying the definition of T. as shear
T = [1  20  0; 
     40    1  0;
     0    0  1];
 
t_Shear = affine2d(T);
I_Output = imwarp(I,t_Shear,'FillValues',fill);

imshow(I_Output)
title('Shear')