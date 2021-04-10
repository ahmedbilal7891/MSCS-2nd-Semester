I = imread('I:\IRUMZAS_Data\IRUMZAS2019\IPU_03122019\Graphics\posterDesigning\SAliGelaniQuaidabad\05012020-labourday\editableSAG.JPG');
I2 = imcrop(I,[75 68 500 1000]);
subplot(1,2,1)
imshow(I)
title('Original Image')
subplot(1,2,2)
imshow(I2)
title('Cropped Image')