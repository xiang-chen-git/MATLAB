% Problem 2
% when n = 5 
% define A1, x1, b
A = zeros(5,5); 
for i=1:5; 
    for j=1:5; 
        A(i,j)=1/(i+j-1); 
    end; 
end; 

x = zeros(5,1);
for i=1:5;
    x(i,1)=1/(5+1-i);
end;

b = A*x;
%find solution 
[L,U,p] = lu(A,'vector');
xhat = U\(L\b(p)); 
% weighted residual for xhat
r = A*x-A*xhat;
rho = norm(r,1) /(norm(A,1)*norm(x,1))
% estimated condition number
c = norm(A,1)*invnormest(L,U) 
% actual relative error
actual_error = norm(xhat-x,1)/norm(x,1)











    