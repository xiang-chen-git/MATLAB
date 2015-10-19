syms x y a b c t f(x) g(x) h(x)

p2 = exp(0.4)

p3 = asin(cos(0.5))

p4 = solve (2*x^3+11*x^2==-15*x)

p5 = solve(10*exp(-log(2)/10*x)==25*exp(-log(2)/3.5*x))

p6 = simplify (1/(x+1)+1/(2/x+1)+1)

p7 = sqrt(78.3^2+66.8^2-2*78.3*66.8*cos(64.1*pi/180))

p8 = factor(30*x^6-77*x^5+24*x^4+35*x^3)

myage = 20
p9 = sqrt(myage)
p9 = 1/p9
p9 = tan(5*p9)

p10 = solve(a/(b+c)+b-a*(b+2)==b,b)

[p11a,p11b] = solve([x+2*y==-3,4*x-y==1],[x,y])

[dimes,nickels,pennies] = solve([10*a + 5*b + c==266,a + b + c==40,a==2*c],[a,b,c])

f(x)=x^2+5*x-3
p13b = f(1)^2 + f(-3)
p13c = simplify(f(2/t-3))
p13d = solve(f(x)==0,x)
p13e = solve(f(x)-6*x==0)
p13f = factor(f(x)^2+f(x))

g(x)= 3*x+1
h(x) = 2/(x+1)
p14c = solve (g(x)==h(x))
p14d = solve (g(x)==h(2*x))
p14e = solve(h(g(x))==-5)

p15 = fzero('3*x^3-5*x+1',1)

p16= fzero('exp(x-1)-2^x',2)