% local extrema
syms x
f = x^3 + x^2 - x + 1;
%x1 = 1/3;
x1 = -1;

df = diff(f);
dff = diff(df);
result = 0;
if subs(df, x1) == 0 
    if subs(dff, x1) > 0
        result = "local min";
    elseif subs(dff, x1) < 0
        result = "local max";
    end
end
result

% hessian matrix (multi-dimension일때)
syms x y
f = y - x - 2*x^2 - 2*x*y - y^2;
x1 = -1;
y1 = 3/2;

h = hessian(f,[x,y]);
m = subs(h,{x,y},{x1,y1});
det(m);
result = 0;
if det(m)>0
    if h(1,1) > 0
        result = "local min";
    elseif h(1,1) < 0
        result = "local max";
    end
elseif det(m)<0
    result = "saddle point";
end
result