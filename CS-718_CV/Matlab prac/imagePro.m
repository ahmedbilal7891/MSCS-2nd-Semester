img = imread("F:\Ahmed_Bilal\GicsCollection2019\FaceBook\12282019\FB_IMG_15715607338332256.JPG");

%image cropping
%I = imcrop(img,[75 68 500 500]);
%I2 = imcrop(img,[75 68 300 300]);

%Image resizing
%I2 = imresize(img, 0.2);
%I2 = imresize(img, 0.2, 'nearest');

%Image rotation
%I2 = imrotate(img,4,'nearest');
%I2 = imrotate(img,4,'bilinear','crop');
subplot(1,2,1)
imshow(img)
title('Original 1 Image')
%subplot(1,2,2)
%imshow(I2)
%title('simple resize Image')
%subplot(1,3,3)
%imshow(I3)
%title('with nearest Image')

%Image resize practice
%I = imread('rice.png');
%J = imresize(img, 0.2);
%imshow(J)
%title('Original Image')
