%Scaling transformation through matrix affine2d

sqsize = 60;
I = checkerboard(sqsize,4,4);

fill = 0.2;


% Try varying the definition of T. as scaling
T = [0.5  0  0; 
     0    2  0;
     0    0  1];
 
t_Scaling = affine2d(T);
final_img = imwarp(I,t_Scaling,'FillValues',fill);

%output formating
subplot(1, 2, 1);
imshow(I);
axis on;
title("orignal image");

subplot(1, 2, 2);
imshow(final_img);
axis on;
title("final image");
title('Scaling')