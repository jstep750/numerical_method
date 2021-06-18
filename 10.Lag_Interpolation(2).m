%linear interpolation (degree 1 - 2 points)
x0 = 1.1;
y0 = 1.9648;
x1 = 1.2;
y1 = 2.5722;

xx = 1.15;
yy = (y1-y0)/(x1-x0) * (xx-x0) +y0;
yy

%quadratic interpolation (degree 2 - 3 points)
P = [1 1.5574; 1.1 1.9648; 1.2 2.5722; 1.3 3.6021];
yy2 = Lag(P, 1.15, 2)
yy3 = Lag(P, 1.15, 3)

