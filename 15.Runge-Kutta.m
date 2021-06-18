% Runge-Kutta method
% 2nd order
% taylor series method
syms x
N = 4;  % taylor N (1이면 Euler와 같음!)
f = 3*x^3 - 2*x^2 + x - 4;
x0 = 0;
y0 = 0;
h = 1/2;
xf = 3;  % f(xf) = ??
a = 1/2

df = diff(f);
k = (xf-x0)/h+1;
P = zeros(k,2);
P(1,:) = [x0, y0];

for i = 2:k
    x = P(i-1,1);
    if a == 1/2
        y = P(i-1,2) + h*subs(df,x + h/2);
    elseif a == 1
        y = P(i-1,2) + (h/2)*(subs(df,x)+subs(df,x+h));
    end
    P(i,:) = [x+h, y];
end
P


