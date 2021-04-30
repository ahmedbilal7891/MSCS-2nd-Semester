%translation performed by matrix approach affine2d
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

I = checkerboard(50, 5, 5);

I_ref = imref2d(size(I));


T = [1 0 0; 0 1 0; 300 400 1];

transf_obj = affine2d(T);

[final_img, final_ref] = imwarp(I, transf_obj);

%Output section
subplot(1, 2, 1);
imshow(I, I_ref);
axis on;
title("orignal image");

subplot(1, 2, 2);
imshow(final_img, final_ref);
axis on;
title("final image");