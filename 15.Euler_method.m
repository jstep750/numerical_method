%differential equation
%euler's method
syms x
v0 = 3;
g = 1;
f = v0*x -(1/2)*g*x^2;
h = 1/2;
x0 = 0; 
y0 = 0;
xf = 1; % f(xf) = ??

df = diff(f);
k = (xf-x0)/h+1;
P = zeros(k,2);
P(1,:) = [x0, y0];
for i = 2:k
    x = P(i-1,1);
    y = P(i-1,2) + h*subs(df,x);
    P(i,:) = [x+h, y];
end
P
