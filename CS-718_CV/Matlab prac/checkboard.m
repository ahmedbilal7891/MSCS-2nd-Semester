%with all three parameters

%J = checkerboard(50);
%By default

J=checkerboard(50, 5, 7);

%to store image reference
%J_ref = imref2d(size(J));
%.............
%background = zeros(150); %create bg blck
%imshowpair(J,J_ref,background,imref2d(size(background)))
%J = checkerboard(50, 5, 10);
%.....................
%nrows = size(J,3);
%ncols = size(J,5);
%fill = 0.3;

figure;
imshow(J)