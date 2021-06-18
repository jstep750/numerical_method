% taylor series
syms x
N = 4;
f = 3*x^3 - 2*x^2 + x - 4;
c = 0;

T = zeros(N,1);
df = f;
for i = 1:N
    T(i) = subs(df,c)/factorial(i-1);
    df = diff(df);
end
T   
%a0 ~aN까지 coefficients

% taylor series method
syms x
N = 4;  % taylor N (1이면 Euler와 같음!)
f = 3*x^3 - 2*x^2 + x - 4;
x0 = 0;
y0 = 0;
h = 1/2;
xf = 3;

k = (xf-x0)/h+1;
P = zeros(k,2);
P(1,:) = [x0, y0];
for i = 2:k
    x = P(i-1,1);
    
    T = zeros(N,1);
    df = f;
    for j = 1:N
        df = diff(df);
        T(j) = (subs(df,x)/factorial(j-1))*(h^(j-1));
    end
    y = P(i-1,2) + h*sum(T);
    P(i,:) = [x+h, y];
end
P


% Euler
syms x
N = 1;  % taylor N (1이면 Euler와 같음!)
f = 3*x^3 - 2*x^2 + x - 4;
x0 = 0;
y0 = 0;
h = 1/2;
xf = 3;

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