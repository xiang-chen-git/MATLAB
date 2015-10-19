function rhs=newmethod(w)
         rhs = @(t,y) [y(2);-0.2*y(2)+y(1)-y(1)^3+0.3*cos(w*t)]
         [xa,ya] = ode45(rhs, [0 100],[0 0])
         plot(xa,ya(:,1))
end