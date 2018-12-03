clear all;
I1=imread('tire.tif');
[counts,x]=imhist(I1);
[H,W]=size(I1);
p=counts/(H*W);
sum1=0;
for i=1:256
    if(p(i)>0)
%     Entropy=(-p(i)*log2(p(i)));
     sum1=sum1-p(i)*log2(p(i));
%     sum=sum+Entropy;
    end  
end
sum1