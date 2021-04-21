%Rotation
sqsize = 60;
I = checkerboard(sqsize,4,4);

fill = 0.2;

q = 90;

% Try varying the definition of T. as rotation
T = [cos(q)  sin(q)  0; 
     -sin(q)    cos(q)  0;
     0    0  1];

 t_rotation = affine2d(T);
I_output = imwarp(I,t_rotation,'FillValues',fill);


imshow(I_output)
axis on
title('Rotation')