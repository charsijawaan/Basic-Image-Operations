% By Charsi

clc
close all

RGBImage = imread('noise.jpg');
grayImage = rgb2gray(RGBImage);
blurredImage = rgb2gray(RGBImage);

maskSize = input('Enter Mask Size e.g enter 3 for 3x3. Only Odd Mask Size\n');
mask(1 : maskSize , 1 : maskSize) = 1 / (maskSize* maskSize);

% Here I am adding weight 1 to ever mask index
% You can add your customer weights to make your own filter

r = ceil((maskSize / 2));

for i = r : size(grayImage, 1) - r + 1
    for j = r : size(grayImage, 2) - r + 1
       s = uint32(0);       
       for p = 1 : maskSize
           for q = 1 : maskSize
               s = s + uint32(grayImage(i + p - r, j + q - r) * mask(p, q));
           end
       end
       blurredImage(i, j) = s;
    end
end

figure, imshow(grayImage);
figure, imshow(blurredImage);