% golden ratio search
syms x
f = x^2 - sin(x);
k = 7;
a0 = 0;
b0 = 1;

r = (-1 + sqrt(5))/2;
c0 = a0 + (1-r)*(b0-a0);
d0 = b0 - (1-r)*(b0-a0);

A = zeros(k,4);
A(1,:) = [a0, c0, d0, b0];
B = zeros(k,4);
B(1,:) = [subs(f,a0), subs(f,c0), subs(f,d0), subs(f,b0)];
for i = 2:k
    a = A(i-1,1);
    c = A(i-1,2);
    d = A(i-1,3);
    b = A(i-1,4);
    if subs(f,c) <= subs(f,d)   % [a0, 0, 0, d0]
        b = d;
        c = a + (1-r)*(b-a);
        d = b - (1-r)*(b-a);
    else          % [c0, 0, 0, b0]
        a = c;
        c = a + (1-r)*(b-a);
        d = b - (1-r)*(b-a);
    end
    A(i,:) = [a, c, d, b];
    B(i,:) = [subs(f,a), subs(f,c), subs(f,d), subs(f,b)];
end
A
B