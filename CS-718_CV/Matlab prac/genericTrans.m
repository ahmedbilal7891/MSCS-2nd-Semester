sqsize = 60;
I = checkerboard(sqsize,4,4);
%nrows = size(I,5);
%ncols = size(I,7);
fill = 0.2;

imshow(I)
title('Original')

% Try varying these 4 parameters.
scale = 1.2;       % scale factor
angle = 40*pi/360; % rotation angle
tx = 0;            % x translation
ty = 0;            % y translation

sc = cos(angle);
ss = sin(angle);

T = [ sc -ss  0;
     ss  sc  0;
      tx  ty  1];
  
t_nonsim = affine2d(T);
[I_nonreflective_similarity,RI] = imwarp(I,t_nonsim,'FillValues',fill);

imshow(I_nonreflective_similarity, RI);
axis on
title('Nonreflective Similarity')