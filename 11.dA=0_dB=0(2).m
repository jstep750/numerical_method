%least squares fitting
P = [-1 10; 0 9; 1 7; 2 5; 3 4; 4 3; 5 0; 6 -1];

sum_x = 0;
sum_y = 0;
sum_xx = 0;
sum_xy = 0;
s = size(P);
n = s(1);
for i = 1:n
    sum_x = sum_x + P(i,1);
    sum_y = sum_y + P(i,2);
    sum_xx = sum_xx + P(i,1)^2;
    sum_xy = sum_xy + P(i,1)*P(i,2);
end
M = [sum_xx sum_x; sum_x n];
N = [sum_xy; sum_y];

A_B = linsolve(M,N)

%power fit (F : a*x^m)
P = [0.2 0.1960; 0.4 0.7850; 0.6 1.7665; 0.8 3.1405; 1 4.9075];
m = 2;

sum_xx = 0;
sum_xy = 0;
s = size(P);
n = s(1);
for i = 1:n
    sum_xx = sum_xx + P(i,1)^(2*m);
    sum_xy = sum_xy + P(i,2)*(P(i,1)^m);
end
a = sum_xy/sum_xx