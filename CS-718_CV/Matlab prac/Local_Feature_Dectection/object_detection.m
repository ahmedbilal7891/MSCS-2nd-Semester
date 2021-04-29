%object detection
%%%%%%%%%%%%%%%%%
%object to be detection
%boxImage = imread('stapleRemover.jpg');
boxImageX = imread('F:\Ahmed_Bilal\MS_EDu\Classes\Semester-2-atum-2021\Classes\CS-718_CV\Matlab prac\images\singleCycle.jpeg');
boxImage = rgb2gray(boxImageX);
figure;
imshow(boxImage);
title('Image of a Box');

%cluttered image
%sceneImage = imread('clutteredDesk.jpg');
sceneImageX = imread('F:\Ahmed_Bilal\MS_EDu\Classes\Semester-2-atum-2021\Classes\CS-718_CV\Matlab prac\images\ClutteredCycle.jpg');
sceneImage = rgb2gray(sceneImageX);
figure;
imshow(sceneImage);
title('Image of a Cluttered Scene');

%detection of feature points

boxPoints = detectSURFFeatures(boxImage);
scenePoints = detectSURFFeatures(sceneImage);
%boxPoints = detectFASTFeatures(boxImage);
%scenePoints = detectFASTFeatures(sceneImage);


%visiualization of points in image
figure;
imshow(boxImage);
title('100 Strongest Feature Points from Box Image');
hold on;
plot(selectStrongest(boxPoints, 100));

%Detected points in scene
figure;
imshow(sceneImage);
title('300 Strongest Feature Points from Scene Image');
hold on;
plot(selectStrongest(scenePoints, 300));

%Feature extration
[boxFeatures, boxPoints] = extractFeatures(boxImage, boxPoints);
[sceneFeatures, scenePoints] = extractFeatures(sceneImage, scenePoints);

%Putative Point Matches
boxPairs = matchFeatures(boxFeatures, sceneFeatures);

%Display match features
matchedBoxPoints = boxPoints(boxPairs(:, 1), :);
matchedScenePoints = scenePoints(boxPairs(:, 2), :);
figure;
showMatchedFeatures(boxImage, sceneImage, matchedBoxPoints, ...
    matchedScenePoints, 'montage');
title('Putatively Matched Points (Including Outliers)');

%Locate the Object in the Scene Using Putative Matches
[tform, inlierBoxPoints, inlierScenePoints] = ...
    estimateGeometricTransform(matchedBoxPoints, matchedScenePoints, 'affine');

%Display the matching point pairs with the outliers removed
figure;
showMatchedFeatures(boxImage, sceneImage, inlierBoxPoints, ...
    inlierScenePoints, 'montage');
title('Matched Points (Inliers Only)');