I=imread('pout.tif');
figure,imshow(I);
[H,W]=size(I);
% I=double(I);
figure,imhist(I);
J=histeq(I);%jun heng hua 
figure,imshow(J);
figure,imhist(J);
[counts1,x1]=imhist(J);
