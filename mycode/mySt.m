% x=[-1,3,-2,100]
% sort(x)
x0=0.31;
A=imread('rice.png');
[H,W]=size(A);
A=double(A);
x=zeros(1,H*W);

for i=1:H*W
    x(i)=4.0*x0*(1-x0);
    x0=x(i);
end
x=floor(x*256);%qu zheng
B=reshape(x,[H W]);
C=bitxor(A,B);
C=uint8(C);
figure,imshow(C);
% % [tempx,index]=sort(x);
% % V=reshape(A,[1 H*W]);
% % for i=1:H*W
% %     V1(i)=V(index(i));
% % end
% % A1=reshape(V1,[H,W]);
% % figure,imshow(A1);
% % imwrite(A1,'myhundun.bmp');
imwrite(C,'myhundun.bmp');
C=imread('myhundun.bmp');
A1=bitxor(double(C),B);
figure,imshow(uint8(A1));
% % V2=reshape(C,[1 H*W]);
% % V3(index)=V2;
% % D=reshape(V3,[H W]);
% % figure,imshow(D);


% for i=1:H*W
%     V(index(i))=V1(i);%V(i)=V1(index(i))
% end
% A1=reshape(V,[H,W]);
% imshow(A1);
