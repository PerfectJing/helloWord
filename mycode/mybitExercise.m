% bitget(6,1)
I=imread('rice.png');I=double(I);[H,W]=size(I);
% b1=bitget(I,1);figure,imshow(b1,[]);
% b2=bitget(I,2);figure,imshow(b2,[]);
% b3=bitget(I,3);figure,imshow(b3,[]);
% b4=bitget(I,4);figure,imshow(b4,[]);
% b5=bitget(I,5);figure,imshow(b5,[]);
% b6=bitget(I,6);figure,imshow(b6,[]);
% b7=bitget(I,7);figure,imshow(b7,[]);
% b8=bitget(I,8);figure,imshow(b8,[]);
for i=1:8
b=bitget(I,i);
subplot(2,4,i),imshow(b);
end
HI=imread('write');
figure,imshow(HI);
I0=bitset(I0(1:140,1:140),1,HI);
I(1:140,1:140)=I0;
figure,imshow(uint8(I));
stu=bitget(I(1:140,1:140),1);
figure,imshow(stu);
