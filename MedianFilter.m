% By Charsi

clc
close all

RGBImage = imread('noise.jpg');
grayImage = rgb2gray(RGBImage);
filteredImage = rgb2gray(RGBImage);

maskSize = input('Enter Mask Size e.g enter 3 for 3x3. Only Odd Mask Size\n');
mask(1 : maskSize , 1 : maskSize) = 1;

r = ceil((maskSize / 2));
arrSize = maskSize * maskSize;

for i = r : size(grayImage, 1) - r + 1
    for j = r : size(grayImage, 2) - r + 1      
        arr = [];
        for p = 1 : maskSize
            for q = 1 : maskSize             
                arr( (maskSize * (p - 1)) + q ) = grayImage(i + p - r, j + q - r);            
            end
        end        
        filteredImage(i, j) = mean2(arr);
    end
end

figure, imshow(grayImage);
figure, imshow(filteredImage);