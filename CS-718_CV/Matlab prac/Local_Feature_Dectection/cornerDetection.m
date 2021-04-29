%Simple example1

I = imread('cameraman.tif');
%corners = detectFASTFeatures(I, 'MinContrast', 0.6); %, 'MinQuality',0.01 ,'MinContrast',0.005
%imshow(I); hold on;
%plot(corners.selectStrongest(100));
%plot(selectStrongest(corners, 50));



%Example2 with name and value

%I = imread('circuit.tif');
corners = detectFASTFeatures(I,'MinContrast',0.1);
J = insertMarker(I,corners,'square');
imshow(J)