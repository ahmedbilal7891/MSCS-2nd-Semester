%Scaling
sqsize = 60;
I = checkerboard(sqsize,4,4);

fill = 0.2;



% Try varying the definition of T. as scaling
T = [10  0  0; 
     0    20  0;
     0    0  1];
 
t_Scaling = affine2d(T);
I_output = imwarp(I,t_Scaling,'FillValues',fill);

imshow(I_output)
title('Scaling')