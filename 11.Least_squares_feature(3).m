%linear least squares   y = Ax^2 + Bx + C
P = [-3 3; 0 1; 2 1; 4 3];

s = size(P);
n = s(1);
m = s(2);

F = zeros(n,m);     % feature function
for i = 1:n
    f = zeros(1,m);
    f(3) = 1;
    f(2) = P(i,1);
    f(1) = P(i,1)^2;
    F(i,:) = f;
end
Y = P(:,2);
% F.'*F * C = F.'*Y
F_square = F.'*F;
RHS = F.'*Y;

C = linsolve(F_square,RHS)

%nonlinear least squares   y = c*e^(a*x)  -> Y = ln(y)
P = [0 1.5; 1 2.5; 2 3.5; 3 5.0; 4 7.5];

s = size(P);
n = s(1);
m = s(2);

F = zeros(n,m);     % feature function
for i = 1:n
    f = zeros(1,m);
    f(2) = 1;
    f(1) = P(i,1);
    F(i,:) = f;
end
Y = log(P(:,2));   % -> Y = ln(y) 
% F.'*F * C = F.'*Y
F_square = F.'*F;
RHS = F.'*Y;

C = linsolve(F_square,RHS);
C(2) = exp(C(2));
C