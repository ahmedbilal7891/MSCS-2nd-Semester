%Translation
sqsize = 60;
I = checkerboard(sqsize,4,4);

fill = 0.2;

tx = 400;            % x translation
ty = 500;            % y translation


T = [ 1 0  0;
    0  1  0;
    100 50  1];
  
t_translation = affine2d(T);

%[I_nonreflective_similarity,RI] = imwarp(I,t_translation,'FillValues',fill);

[I_output] = imwarp(I,t_translation,'FillValues', 0.1);
figure;
imshow(I);
axis on
title('image')
figure;
imshow(I_output);
axis on
title('Translation performed')