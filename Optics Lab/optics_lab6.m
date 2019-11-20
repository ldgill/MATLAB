A = imread('b1.JPG');
B = imread('c1.JPG');
C = imread('g1.JPG');
D = imread('r1.JPG');
X = imadd(A,B);
Y = imadd(C,D);
Z = imadd(X,Y);
image(Z);
Im = sum(Z,3)/3;
Im = uint8(Im);
image(Im);
J = imcrop(Im);
S = sum(J);
% [row, columb] = size(S);
% % px = row*columb;
% % x = (422:5:650);
% % lamda = ((0.82*10^(-9))/px)*px + (422*10^(-9));

plot(S);
xlabel('Wavelength');