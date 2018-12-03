clear all;
close all;
I1=imread('tire.tif');
J1=histeq(I1);
subplot(221),imshow(I1);
subplot(222),imshow(J1);
subplot(223),imhist(I1);
subplot(224),imhist(J1);
[counts,x]=imhist(J1);
M=histeq(I1,counts);
figure,subplot(221),imshow(J1);
subplot(222),imshow(M);
subplot(223),imhist(J1);
subplot(224),imhist(M);

isequal(M,J1)