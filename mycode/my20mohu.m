 I = im2double(imread('cameraman.tif'));
 imshow(I);
 LEN = 21;
       THETA = 11;
       PSF = fspecial('motion', LEN, THETA);
       blurred = imfilter(I, PSF, 'conv', 'circular');
       figure,imshow(blurred)
        wnr3 = deconvwnr(blurred, PSF);
       figure, imshow(wnr3)
       isequal(I,wnr3)
       