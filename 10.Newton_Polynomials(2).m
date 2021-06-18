%newton polynomial
P = [1 -3; 2 0; 3 15; 4 48; 5 105; 6 192];
x = 4

s = size(P);
n = s(1);

div = zeros(n,n);
div(:,1) = P(:,2);
A = zeros(n,1);
A(1) = P(1,2);
for i = 2:n   %i-1th difference
   for j = i:n
       div(j,i) = (div(j,i-1) - div(j-1,i-1))/(P(j,1) - P(j-i+1,1));
   end 
   A(i) = div(i,i);
   for j = 1:i-1
       A(i) = A(i)*(x-P(j,1));
   end 
end
div
A