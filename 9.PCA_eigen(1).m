% P = [1,1; 2,2; 3,3];
P = [-1,2; 2,1; 2,3];

s = size(P);
n = s(1);
add = 0;
for i = 1:n
    add = add + P(i,:);
end
m = (1/n)*add.';

temp = 0;
for i = 1:n
    sub = P(i,:).' - m;
    temp = temp + sub*sub.';
end
c = (1/n)*temp;
lambda = eig(c).';
[vector,D] = eig(c);
lambda, vector

% C1 = ACA.'