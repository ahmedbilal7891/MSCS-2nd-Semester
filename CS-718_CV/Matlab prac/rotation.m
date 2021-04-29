%Rotation
sqsize = 60;
I = checkerboard(sqsize,4,4);

fill = 0.2;

q = 360;

% Try varying the definition of T. as rotation
T = [cos(q)  sin(q)  0; 
     -sin(q)    cos(q)  0;
     0    0  1];

 t_rotation = affine2d(T);
final_img = imwarp(I,t_rotation,'FillValues',fill);


%Output section
subplot(1, 2, 1);
imshow(I);
axis on;
title("orignal image");

subplot(1, 2, 2);
imshow(final_img);
axis on;
title("final image");