img = imread('demo.jpg');

[x,y]=size(img);
G = fspecial('gaussian',[8,8],1);
Gx = imfilter(G,[-1,1],'corr','same');
Gy = imfilter(G,[-1;1],'corr','same');
Sx = conv2(img,Gx,'same');
Sy = conv2(img,Gy,'same');
mag = sqrt(Sx.^2 + Sy.^2);
rad = atan(Sy./Sx);