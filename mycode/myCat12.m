A=imread('rice.png');
figure,imshow(A);
A=double(A);
[H,W]=size(A);
B=zeros(H,W);
iter=10;p=11;q=38
for k=1:iter
for i=0:H-1
    for j=0:W-1
        m=mod(i+p*j,H);
        n=mod(q*i+(p*q+1)*j,W);
        B(m+1,n+1)=A(i+1,j+1);
    end
end
A=B;
end
B=uint8(B);figure,imshow(B)
imwrite(B,'myencrice.bmp');

%huifu
C=imread('myencrice.bmp');
for k=1:iter
% for i=0:H-1
%     for j=0:W-1
%         i1=mod(i+p*j,H);
%         j1=mod(q*i+(p*q+1)*j,W);
%         D(i+1,j+1)=C(i1+1,j1+1);
%     end
%end
for i1=0:H-1  %(i,j)'
    for j1=0:W-1
        i=mod((p*q+1)*i1-p*j1,H);    %i=mod(pq1*i1-p*j1,H);
       
        j=mod(-q*i1+j1,W);
        D(i+1,j+1)=C(i1+1,j1+1);
    end
end
% A=B;
C=D;
end
D=uint8(D);figure,imshow(D)
