%Projective
sqsize = 60;
I = checkerboard(sqsize,4,4);

fill = 0.2;


% Try varying the definition of T. as rotation
T = [1  0  0.00050; 
     0  1  0.00080;
     0  0  1];
 

t_projective = projective2d(T);
I_Output = imwarp(I,t_projective,'FillValues',fill);


imshow(I_Output)
axis on
title('Projective')