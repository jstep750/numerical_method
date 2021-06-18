% Mz = B
% Ly = B, Ux = y -> x==z
%M = [6,4,2; 3,-2,-1; 3,4,1];
%B = [12; 0; 8];
M = [6,4,2; 3,-2,-1; 3,4,1];   %equation matrix
B = [1 0 0; 0 1 0; 0 0 1];     %answer matrix
% -> z,x is inv(M)

[L,U] = lu(M);
L,U
%L = [1,0,0; 1/2,1,0; 1/2,-1/2,1];
%U = [6,4,2; 0,-4,-2; 0,0,-1];

y = linsolve(L,B);
x = linsolve(U,y);
z = linsolve(M,B);
x, z