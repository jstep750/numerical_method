% fibonacci search
syms x
f = x^2 - sin(x);
tolerance = 1e-4;
a0 = 0;
b0 = 1;

N = 4;
while fibonacci(N) < (b0-a0)/tolerance
    N = N+1;
end
r = fibonacci(N-1)/fibonacci(N);
c0 = a0 + (1-r)*(b0-a0);
d0 = b0 - (1-r)*(b0-a0);
k = N-2

A = zeros(k,4);
A(1,:) = [a0, c0, d0, b0];
for i = 2:k
    r = fibonacci(N-1-i)/fibonacci(N-i);
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
end
A