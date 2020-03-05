%By Charsi

clc
close all

RGBImage = imread('apple.jpeg');
grayImage = rgb2gray(RGBImage);

operation = input('Press 1 to make image bright\nPress 2 to make image dull\n');

for i = 1 : size(grayImage, 1)
   for j = 1 : size(grayImage, 2)
       if operation == 1
           grayImage(i, j) = grayImage(i, j) + 100;
       elseif operation == 2
           grayImage(i, j) = grayImage(i, j) - 100;
       end
   end
end

imshow(grayImage);
  