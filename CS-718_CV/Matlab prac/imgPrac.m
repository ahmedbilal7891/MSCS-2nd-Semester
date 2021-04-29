%load trees
A = imread("F:\Ahmed_Bilal\GicsCollection2019\FaceBook\12282019\FB_IMG_15715945299818565.jpg");

%I = imcrop(A,[50 70 200 700]);
%I = imcrop(A,map,[75 75 500 750]);
%J = imresize(A, [200 200]);
%J = imrotate(A,-360);

J = imtranslate(A,[50, -50],'FillValues', 180);

subplot(1,2,1);
imshow(A);
axis on
title('Original Image');
subplot(1,2,2);
imshow(J);
axis on
title('Resized Image')