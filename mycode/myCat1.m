function B=Amod2017(A,p,q,iter)
% A=imread('rice.png');
figure,imshow(A);
A=double(A);
[H,W]=size(A);
B=zeros(H,W);
% iter;p;q;
for k=1:iter
for i=0:H-1
    for j=0:W-1
        i1=mod(i+p*j,H);
        j1=mod(q*i+(p*q+1)*j,W);
        B(i1+1,j1+1)=A(i+1,j+1);
    end
end
A=B;
end
B=uint8(B);figure,imshow(B)