% bisection method
syms c
f = ((9.8*68.1)/c)*(1-exp(-(c/68.1)*10)) - 40;
xl = 12;
xr = 16;
k = 6;   %iteration

xm = (xl + xr)/2;
X = zeros(k,4);
X(1,:) = [xl, xr, xm, 0];
for i = 2:k
    l = X(i-1,1);
    r = X(i-1,2);
    m = X(i-1,3);
    temp = subs(f,l)*subs(f,m);
    if temp < 0
        "minus"
        r = m;
        m = (l+r)/2;
    elseif temp > 0
        "plus"
        l = m;
        m = (l+r)/2;
    elseif temp == 0
        break
    end
    e = (m - X(i-1,3))/m;
    X(i,:) = [l, r, m, e];
end
X