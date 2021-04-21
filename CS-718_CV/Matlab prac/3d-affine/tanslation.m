%Translation
sqsize = 60;
I = checkerboard(sqsize,4,4);

fill = 0.2;

tx = 400;            % x translation
ty = 500;            % y translation
tz = 300;

T = [ 1 0  0 0;
      0 1  0 0;
      0 0  1 0;
      tx ty tz 1];
  
t_translation = affine3d(T);

%[I_nonreflective_similarity,RI] = imwarp(I,t_translation,'FillValues',fill);

I_output = imwarp(I,t_translation,'FillValues',fill);

imshow(I_output);
axis on
title('Translation performed')