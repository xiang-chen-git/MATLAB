tic
sol = dsolve('D2y+Dy+y=(t+1)^3*exp(-t)*cos(t)*sin(3*t)','y(0)=1','Dy(0)=0')
ezplot(sol,[0 20])
toc