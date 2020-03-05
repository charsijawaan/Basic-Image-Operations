% By Charsi

clc
close all

RGBImage = imread('apple.jpeg');
grayImage = rgb2gray(RGBImage);
filteredImage = rgb2gray(RGBImage);

maskSize = input('Enter Mask Size e.g enter 3 for 3x3. Only Odd Mask Size\n');
mask(1 : maskSize , 1 : maskSize) = 1;

r = ceil((maskSize / 2));

for i = r : size(grayImage, 1) - r + 1
    for j = r : size(grayImage, 2) - r + 1      
        max = 0;
        for p = 1 : maskSize
            for q = 1 : maskSize
                if grayImage(i + p - r, j + q - r) > max;
                    max = grayImage(i + p - r, j + q - r);
                end
            end
       end
       filteredImage(i, j) = max;
    end
end

imshow(filteredImage);