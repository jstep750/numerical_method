% Spherical linear interpolation
% yaw = 0.7854; 
% pitch = 0.1; 
% roll = 0;
% q = angle2quat(yaw, pitch, roll)
%
% aq = angle2quat(a, b, c);
% q4 = aq(1); q1 = aq(2); q2 = aq(3); q3 = aq(4);

% Bilinear interpolation
P = [20 40; 10 20];     
%   (0.1)   (1,1)
%   (0,0)   (1,0)
x = 0.6; 
y = 0.2;

bi = bilinear(x,y,P)

%Trilinear interpolation
P1 = [20 40; 10 20];
P2 = [2 4; 1 2];
x = 0.6; 
y = 0.2;
z = 0.4;
C1 = bilinear(x,y,P1);
C2 = bilinear(x,y,P2);
P3 = [0 0; C1 C2];
tri = bilinear(z,0,P3)