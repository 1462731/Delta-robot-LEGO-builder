% % files = dir('data/dino/*.jpg');
% files = dir('data/own_datasets/duck/*.png');
% n = numel(files);
% n
%  for k=1:n
%      filename = sprintf("data/own_datasets/duck/%01d.png",(k));
%      img = imread(filename);
%      [h,w,d] = size(img);
%      img = rgb2hsv(img);
% %      S = img(:,:,1) > (img(:,:,3)-2);
% %      S = imclearborder(S);
% %      S = bwareaopen(S, ceil(h*w/10));
% %      S = ~bwareaopen(~S, ceil(h*w/100));
%      topGL = 179; % Whatever white is.
%      silhouetteImage = img(:,:,1) < topGL | img(:,:,2) < topGL | img(:,:,3) < topGL;
%      silhouetteImage = imclearborder(silhouetteImage);
%      silhouetteImage = bwareaopen(silhouetteImage, ceil(h*w/10));
%      silhouetteImage = ~bwareaopen(~silhouetteImage, ceil(h*w/100));
%      imshow(silhouetteImage); % Display logical/binary image.
%      pause
% %      mask = S;
% %      imshow(mask);
%  end
%  
    


%  files = dir('data/dino/*.jpg');
files = dir('data/own_datasets/duck/*.png');
n = numel(files);
n
for k=1:n
    filename = sprintf("data/own_datasets/duck/%01d.png",(k));
%     filename = sprintf("data/dino/dino%02d.jpg",(k-1));
    img = imread(filename);
    img = rgb2hsv(img);
    [h,w,d] = size(img);
    if d > 1
      grayImage = img(:, :, 2); % Take green channel (or saturation if HSV).
       imshow(grayImage);
       pause;
    end
    
%     [pixelCount, grayLevels] = imhist(grayImage);

    level = 0.65;
    imgThresh = imbinarize(grayImage, level);
    imshow(imgThresh);
    pause;
% -------------------------------------------------------    
%      level = multithresh(grayImage);
%      binaryImage =  imquantize(grayImage, level);
% -------------------------------------------------------
%     binaryImage = imclearborder(grayImage);
%     binaryImage = imfill(grayImage, 'holes');
%     binaryImage = bwareaopen(grayImage, ceil(h*w/10));
%     binaryImage = ~bwareaopen(~binaryImage, ceil(h*w/100));
% ------------------------------------------------------
    imgThresh = imclearborder(imgThresh);
    imgThresh = imfill(imgThresh, 'holes');
    imgThresh = bwareaopen(imgThresh, ceil(h*w/10));
    imgThresh = ~bwareaopen(~imgThresh, ceil(h*w/100));
    imshow(imgThresh);
    pause;
    img =  hsv2rgb(img);
    maskedRgbImage = bsxfun(@times, img, cast(imgThresh, class(img)));
    imshow(maskedRgbImage);
    pause;

end
