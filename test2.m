%% when n = 20 
% define A, x, b
A = zeros(20,20);
for i=1:20;
    for j=1:20;
        if (j == 20)
          A(i,j) = 5;
        elseif (i==j) && (j<20)
            A(i,j) = 1;
        elseif (i>j)
            A(i,j) = -1;
        else
            A(i,j) = 0;
        end;
    end;
end; 

x = zeros(20,1);
for i=1:20;
    x(i,1)=1/(20+1-i);
end;

b = A*x;
%find solution 
[L,U,p] = lu(A,'vector');
xhat = U\(L\b(p)); 
% one step of iterative improvement 
r = A*x-A*xhat;
[L,U,p] = lu(A,'vector');
deltaX = U\(L\r(p)); 
xhat = xhat + deltaX;
% weighted residual for xhat
r = A*x-A*xhat;
rho = norm(r,1) /(norm(A,1)*norm(x,1))
% estimated condition number
c = norm(A,2)*invnormest(L,U) 
% actual relative error
actual_error = norm(xhat-x,1)/norm(x,1)