
        I = imread('circuit.tif');
        BW1 = edge(I,'prewitt');%�õ�����,edge��������Ե���
        BW2 = edge(I,'canny');
         figure, imshow(I)
        figure, imshow(BW1)
        figure, imshow(BW2)