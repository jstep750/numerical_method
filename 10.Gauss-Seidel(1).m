% convergence
% Seidel method
k0 = [1,2,2];   % start value (guess)
A = [4 -1 1; 4 -8 1; -2 1 5];  % equation matrix
B = [7; -21; 15];   %answer matrix

s = size(A);
n = s(2);   %variable 수
k1 = zeros(1,n);

for i = 1:n
    c = (1/A(i,i));
    temp = A(i,:);
    temp(i) = 0;
    
    kk = zeros(1,n);
    for j = 1:n
        if j<i     %already computed
            kk(j) = k1(j);
        else
            kk(j) = k0(j);
        end 
    end
    temp = temp .* kk;
    k1(i) = c*(B(i) - sum(temp));
end
k1

% k2계산
k0 = k1;
k1 = zeros(1,n);
for i = 1:n
    c = (1/A(i,i));
    temp = A(i,:);
    temp(i) = 0;
    
    kk = zeros(1,n);
    for j = 1:n
        if j<i     %already computed
            kk(j) = k1(j);
        else
            kk(j) = k0(j);
        end 
    end
    temp = temp .* kk;
    k1(i) = c*(B(i) - sum(temp));
end
k1