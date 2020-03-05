% By Charsi

clc
close all

rows = input('Enter number of rows\n');
columns = input('Enter number of columns\n');

matrix = zeros(rows, columns);

cntrX = rows/2;
cntrY = columns/2;
raduis = rows / 4;

for i = 1 : 1000
    for j = 1 : 1000
        if( max(abs((cntrX - i)), abs((cntrY - j ))) <= raduis )
            matrix(i, j) = 255;
        end
    end
end

imshow(matrix);