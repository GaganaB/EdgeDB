%We first take the image and apply edge detection techniques in order to
%enhance image and then extract values

function [] = x ( ) 



%%%% EDGE Detection

clc;
close all;
clear all;
a=imread('ex.jpg');



b=im2double(a);
[m,n]=size(a);

%%PREWIT
N(1:m,1:n)=0
for i=1:m-2;
    for j=1:m-2;
        N(i,j)=-1*b(i,j)-1*b(i,j+1)-1*b(i,j+2)+0+0+0+1*b(i+2,j)+1*b(i+2,j+1)+1*b(i+2,j+2);
    end;
end;
O(1:m,1:n)=0
for i=1:m-2;
    for j=1:m-2;
        O(i,j)=-1*b(i,j)+0+1*b(i,j+2)-1*b(i+2,j)+0+1*b(i+1,j+2)-1*b(i+2,j)+0+1*b(i+2,j+2);
    end;
end;
figure;
subplot(2,2,1)
imshow(N)
title('Prewit    Gx');
subplot(2,2,2)
imshow(O)
title('Prewit    Gy');
Z=N+O;
subplot(2,2,3)
imshow(Z)
title('Prewit    Gx+Gy');
subplot(2,2,4)
imshow(b)
title('Original Image');
