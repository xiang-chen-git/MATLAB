function y=myapproximatelength(f,a,b,n)
         syms  d e l;
         d=(b-a)/n;
         e=a+d;
         y=0;
         while(e<=b)
             l=sqrt((f(e)-f(e-d))^2+d^2);
             y=y+l;
             e=e+d;
             
         end
         
         
end