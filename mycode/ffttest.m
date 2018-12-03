clear all;close all;
 X=imread('rice.png');
 [H,W]=size(X);
 X=double(X);

% B=fft2(X);
% B(1,1)
% t1=sum(sum(X))
 t2=sum(sum(X.^2))   %f
 B=dct2(X);
 t3=sum(sum(B.^2)) %F
 figure,imshow(log10(abs(B)),[]),colormap(jet(64)),colorbar;
 
 invB=idct2(B);
 figure,imshow(uint8(invB));
 
 n=64
 B1=zeros(H,W);
%  B1(1:128,1:128)=B(1:128,1:128);
 B1(1:n,1:n)=B(1:n,1:n);
 
 invB1=idct2(B1);
 figure,imshow(uint8(invB1));
 max(max(abs(invB1-invB)))
 
% t22=t2*H*W
% 
% B1=zeros(H,W);
% B1(1:H/4,1:W/4)=B(1:H/4,1:W/4);
% B1(1:H/4,3*W/4+1:W)=B(1:H/4,3*W/4+1:W);
% B1(3*H/4+1:H,1:W/4)=B(3*H/4+1:H,1:W/4);
% B1(3*H/4+1:H,3*W/4+1:W)=B(3*H/4+1:H,3*W/4+1:W);
% X1=real(ifft2(B1));
% figure,imshow(uint8(X1))
% max(max(abs(X1-X)))
% 
% for n=1:128
% 
% %n=16;
% B1=zeros(H,W);
% B1(1:n,1:n)=B(1:n,1:n);
% B1(1:n,W-n+1:W)=B(1:n,W-n+1:W);
% B1(H-n+1:H,1:n)=B(H-n+1:H,1:n);
% B1(H-n+1:H,W-n+1:W)=B(H-n+1:H,W-n+1:W);
% X1=real(ifft2(B1));
% if n==32
%     figure,imshow(uint8(X1))
% end
% % figure,imshow(uint8(X1))
% % max(max(abs(X1-X)))
% y(n)=sum(sum((X1-X).^2));
% end
% figure,plot(y)
% mat1=dctmtx(3) %
% mat1*mat1'
% x=[1 2 3]
% y=dct(x)
% sum(y.^2)
% idct(y)

