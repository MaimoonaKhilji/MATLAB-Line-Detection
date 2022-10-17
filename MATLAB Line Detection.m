f= imread('circuit.jpg');f= imread('circuit.jpg');
subplot(3,2,1)
imshow(f,[])
title("original Image")

w=[-1 -1 -1; 2 2 2;-1 -1 -1];
g=imfilter(double(f),w);
subplot(3,2,2)
imshow(g,[])
title("Horizontal lines")

gtop=g(1:120, 1:120);
subplot(3,2,3)
imshow(gtop,[])
title("Top Horizontal Lines")

gbot =g(end-119:end,end-119:end);
subplot(3,2,4)
imshow(gbot,[])
title("Bottom Horizontal Lines")

g= abs(g);
subplot(3,2,5)
imshow(g,[])
title("Absolute Horizontal Lines")

T = max(g(:));
g=g>=T;
subplot(3,2,6)
imshow(T)

title("Threshold Horizontal Lines")