%MinEgin corner detector

I = checkerboard(60);

corners = detectMinEigenFeatures(I); %,'MinContrast',0.1   'MetricThreshold'


J = insertMarker(I,corners,'square');
imshow(J)