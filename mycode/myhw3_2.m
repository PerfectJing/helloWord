function B=myhw3_2(A,p,q,iter)
C=imread(A);
figure,imshow(C);
C=double(C);
[H,W]=size(C);
B=zeros(H,W);
for k=1:iter
for i=0:H-1
    for j=0:W-1
        m=mod(i+p*j,H);
        n=mod(q*i+(p*q+1)*j,W);
        B(m+1,n+1)=C(i+1,j+1);
    end
end
C=B;
end
B=uint8(B);figure,imshow(B)