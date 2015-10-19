function y=myquadraticmaximum(f,a,b)
        syms x i;
        eqn = diff(subs(f,x,x))==0;
        sol = solve(eqn,x);
        y = f(a);
        y = max(y,f(b));
        
            
        if (sol> a) && (sol <b)
            y = max(y,f(sol));
        end
        
        
         
end