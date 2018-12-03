I=imread('rice.png');
[H,W]=size(I);I=double(I);
N=3000;
C=floor(rand(1,N)*(W-1))+1;%Nde lie wei (1,W-1)
R=floor(rand(1,N)*H)+1;
for i=1:N
    X(i)=I(R(i),C(i));
    Y(i)=I(R(i),C(i)+1);
end
EX=mean(X);EY=mean(Y);
COVXY=mean((X-EX).*(Y-EY));
DX=mean((X-EX).^2);
DY=mean((Y-EY).^2);
rhoxy=COVXY/sqrt(DX*DY)