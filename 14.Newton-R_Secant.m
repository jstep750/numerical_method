% newton-rapson
syms x
f = exp(-x) - x;
df = diff(f);
x0 = 0;
k = 5;

X = zeros(k,2);
X(1,:) = [x0, 100];
for i = 2:k
    x0 = X(i-1,1);
    x1 = x0 - subs(f,x0)/subs(df,x0);
    X(i,1) = x1;
    X(i-1,2) = abs((x0-x1)/x1)*100;
end
X

%secant method
syms x
f = exp(-x) - x;
xm1 = 0;
x0 = 1;
k = 5;

X = zeros(k,2);
X(1,:) = [x0, 100];
for i = 2:k
    if i~=2
        xm1 = X(i-2,1);
    end
    x0 = X(i-1,1);
    x1 = x0 - (subs(f,x0)*(x0-xm1))/(subs(f,x0)-subs(f,xm1));
    X(i,1) = x1;
    X(i-1,2) = abs((x0-x1)/x1)*100;
end
X