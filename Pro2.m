format long g
syms x y z yh xh
%a
% i  ii iii iv
f(x) = (8+x^3)^(1/3)-2;
c1(x) = x*diff(f(x))/f(x)
f(x) = log(1-2*x);
c2(x) = x*diff(f(x))/f(x)
f(x) = sin(1/x);
c3(x) = x*diff(f(x))/f(x)
f(x) = exp(x)+exp(-x)-2;
c4(x) = x*diff(f(x))/f(x)

%b
% i  ii iii iv
% relative error
x = 1e-5/7;
y = (8+x^3)^(1/3)-2;
xh = vpa('10^-5/7');
yh = vpa((8+xh^3)^(1/3)-2);
relerr1 = double((y-yh)/yh)
x = 1e-5/7;
y = log(1-2*x);
xh = vpa('10^-5/7');
yh = vpa(log(1-2*xh));
relerr2 = double((y-yh)/yh)
x = 1e-5/7;
y = sin(1/x);
xh = vpa('10^-5/7');
yh = vpa(sin(1/xh));
relerr3 = double((y-yh)/yh)
x = 1e-5/7;
y = exp(x)+exp(-x)-2;
xh = vpa('10^-5/7');
yh = vpa(exp(xh)+exp(-xh)-2);
relerr4 = double((y-yh)/yh)


x = 1e-5/7;
vpa(c1(x))
vpa(c2(x))
vpa(c3(x))
vpa(c4(x))

%d
x = 1e-5/7;
y = (8+x^3)^(1/3)-2;
xh = vpa('10^-5/7')
yh = vpa(((2+xh)*(xh^2-2*xh+4))^(1/3)-2)
relerry = double((y-yh)/yh)

x = 1e-5/7;
y = (8+x^3)^(1/3)-2;
xh = vpa('10^-5/7')
yh = vpa((8+xh^3)^(1/3)-2)
relerrx = double((y-yh)/yh)







