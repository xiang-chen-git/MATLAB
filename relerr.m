
z1 = 1e-7;
z2 = 1/3;
b = -z1-z2;
c = z1*z2;
[y1,y2]=qeq(b,c);
r1 = vpa((y1-z1)/z1)
r2 = vpa((y2-z2)/z2)




