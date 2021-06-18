% multidimensional optimization
% random search
% unvariate search
% gradient method
syms x y
f = -4*x^2 -2*y^2 +x*y -x +y +2;
x1 = -1;
y1 = 1;

df = [diff(f,x); diff(f,y)];
d = subs(df,{x,y},{x1, y1});
syms h
gh = subs(f,{x,y},{x1 - d(1)*h, y1 - d(2)*h});
dgh = diff(gh)
ah = solve(dgh)
maxh = [double(x1 - d(1)*ah), double(y1 - d(2)*ah)]


% hessian matrix
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