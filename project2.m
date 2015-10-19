syms x y t f(x) g(x)

f(x) = x^2 + (x-2)/(x+1)
p2a = diff(f(x))


f(x) = x^2*exp(2-x)
p2b = diff(f(x),3)

f(x) = (sin(x) + cos(x)/sin(x))^0.5
p2c = diff(f(x))


f(x) = x/(4*x-2)
p2d = subs(diff(f(x)),x,-1)




f(x) = x*sin(2*x+1)
p3a = int(f(x))

f(x) = 1/(5+x)
p3b = int(f(x),0,2)



p4 = dsolve('Dy+y/t= 2*t')


p5 = dsolve('Dy+2*sin(t)=y','y(pi)=0','t')


f(x) = x^2 +1/x
p6b = f(-3)

p6c = subs(diff(f(x),2),x,-1)

p6d = int((x+f(x)),0,2)


g(x) = x^2 - x
p7b = g(pi/4)
p7c = subs(diff(sqrt(g(x)),2),2)
p7d = int(x*g(x),0,2)


y(x) = x^3 - 8*x +3
ezplot(y(x))


p9 = 1
for x = [2:100]
       p9 = p9 +sqrt(x)
end



p10 = 1.03
while (p10<10000)
       p10 = p10^2 + 2
end


p11a = 1000
p11b = 10000
while (p11a<p11b)
      p11a = p11a^0.999
      p11b = p11b^0.998
end