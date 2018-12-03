clear all;
close all;
img=imread('rice.png');
[H,W]=size(img);
counts2=zeros(1,256);

% for i=1:256    zishezhi
 for i=129:256
%     counts2(i)=2*i-1;
 counts2(i)=H*W/128;
end
% img=imread('rice.png');
% [H,W]=size(img);
figure,stem(counts2);
img1=histeq(img,counts2);
figure,
subplot(221),imshow(img);
subplot(222),imshow(img1);
subplot(223),imhist(img);
subplot(224),imhist(img1);