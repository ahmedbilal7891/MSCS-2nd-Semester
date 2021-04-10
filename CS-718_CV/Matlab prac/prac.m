I = imread('circuit.tif');
I2 = imcrop(I,[75 68 130 112]);
subplot(1,2,1)
imshow(I)
title('Original Image')
subplot(1,2,2)
imshow(I2)
title('Cropped Image')