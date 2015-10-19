function y=myimproperintegral(f,a,tol)
         syms b c d x;
         c=a;
         while 1
            
             c=c+1;
             b=int(f,x,a,c)-int(f,x,a,c-1);
             y=int(f,x,a,c);
             if(b<=tol)
                 break
             end
         
             
         end
         
end