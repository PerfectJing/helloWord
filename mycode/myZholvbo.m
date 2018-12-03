I=imread('eight.tif');
J=imnoise(I,'salt & pepper',0.01);
figure,imshow(I);figure,imshow(J);
L=medfilt2(J,[3,3]);figure,imshow(L);
% h=[0 1 0;1 0 1;0 1 0]/4;
%h=[1 1 1;1 1 1;1 1 1]/9;
h=ones(5,5)/25;
I1=imfilter(J,h);figure,imshow(I1);