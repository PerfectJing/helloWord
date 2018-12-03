
        I = imread('circuit.tif');
        BW1 = edge(I,'prewitt');%用的算子,edge用来做边缘检测
        BW2 = edge(I,'canny');
         figure, imshow(I)
        figure, imshow(BW1)
        figure, imshow(BW2)