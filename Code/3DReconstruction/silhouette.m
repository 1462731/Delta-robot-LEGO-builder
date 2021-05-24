function S = silhouette(im)

[h,w,d] = size(im);

%% Color segmentation: red dinosaur in blue background

%S = im(:,:,3);
%figure, imshow(S)
%S = 255-S;

% Split into color bands.
redBand = im(:,:, 1);
greenBand = im(:,:, 2);
blueBand = im(:,:, 3);
% Display them.


redBand = redBand(:,:,1) >= 100;

S = imcomplement(redBand);
imshow(S)
pause;
%% Remove noise

% Remove regions touching the border or smaller than 10% of image area
%S = imclearborder(S);
%S = bwareaopen(S, ceil(h*w/10));

% Remove holes < 1% image area
%S = ~bwareaopen(~S, ceil(h*w/100));
