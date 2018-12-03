I=imread('pout.tif');
figure,imshow(I);
[H,W]=size(I);
I=double(I);
figure,imhist(uint8(I))
% count(1)=sum(sum(I==0));
% stem(count)
a=60;b=190;
c=0;d=255;
for x=1:H
    for y=1:W
        if I(x,y)<a
            g(x,y)=0;
        elseif I(x,y)>b
            g(x,y)=255;
        else 
            g(x,y)=255/(b-a)*(I(x,y)-a);
        end
    end
end
g=uint8(g);figure,imshow(g)
figure,imhist(g)
