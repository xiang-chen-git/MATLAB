syms x y

%a

%i
z1 = 1e-7;
z2 = 1/3;
b = -z1-z2;
c = z1*z2;
[y1,y2]=qeq(b,c);
r1 = vpa((y1-z1)/z1)
r2 = vpa((y2-z2)/z2)
%ii
z1 = -1/3;
z2 = -1e-7;
b = -z1-z2;
c = z1*z2;
[y1,y2]=qeq(b,c);
r1 = vpa((y1-z1)/z1)
r2 = vpa((y2-z2)/z2)

%iii
z1 = 1/3;
z2 = 1/3+1e-7;
b = -z1-z2;
c = z1*z2;
[y1,y2]=qeq(b,c);
r1 = vpa((y1-z1)/z1)
r2 = vpa((y2-z2)/z2)

%(b)%

%i
z1 = 1e-7;
z2 = 1/3;
b = -z1-z2;
c = z1*z2;
f(x) = (-x+sqrt(x^2-4*c))/2;
g(x) = x*diff(f(x))/f(x);
vpa(g(b))

%ii
z1 = -1/3;
z2 = -1e-7;
b = -z1-z2;
c = z1*z2;
f(x) = (-x+sqrt(x^2-4*c))/2;
g(x) = x*diff(f(x))/f(x);
vpa(g(b))

%iii
z1 = 1/3;
z2 = 1/3+1e-7;
b = -z1-z2;
c = z1*z2;
f(x) = (-x+sqrt(x^2-4*c))/2;
g(x) = x*diff(f(x))/f(x);
vpa(g(b))





