%% Problem 2

%% (a)
% when n = 5 
% define A, x, b
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



%% when n = 10 
% define A, x, b
A = zeros(10,10); 
for i=1:10; 
    for j=1:10; 
        A(i,j)=1/(i+j-1); 
    end; 
end; 

x = zeros(10,1);
for i=1:10;
    x(i,1)=1/(10+1-i);
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
% weighted residual for xhat
r = A*x-A*xhat;
rho = norm(r,1) /(norm(A,1)*norm(x,1))
% estimated condition number
c = norm(A,1)*invnormest(L,U) 
% actual relative error
actual_error = norm(xhat-x,1)/norm(x,1)


%% when n = 40 
% define A, x, b
A = zeros(40,40);
for i=1:40;
    for j=1:40;
        if (j == 40)
          A(i,j) = 5;
        elseif (i==j) && (j<40)
            A(i,j) = 1;
        elseif (i>j)
            A(i,j) = -1;
        else
            A(i,j) = 0;
        end;
    end;
end; 

x = zeros(40,1);
for i=1:40;
    x(i,1)=1/(40+1-i);
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



%% Conclusion 
% when n = 20 40 , they are ill-conditioned 
% when n = 5 10, they are well-conditional
% when n = 5 10 20 40, it is stable, stable, unstable, unstable 

%% (b)
% n=20,40 they are unstable 
%
% Using the follwoing method ---one step of  iteravite improvement 
%
% r=b-A*x1
%
% delta(x) = SolveLU(r)
%
% x2 = delta(x) + x1


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
c = norm(A,1)*invnormest(L,U) 
% actual relative error
actual_error = norm(xhat-x,1)/norm(x,1)


%% when n = 40 
% define A, x, b
A = zeros(40,40);
for i=1:40;
    for j=1:40;
        if (j == 40)
          A(i,j) = 5;
        elseif (i==j) && (j<40)
            A(i,j) = 1;
        elseif (i>j)
            A(i,j) = -1;
        else
            A(i,j) = 0;
        end;
    end;
end; 

x = zeros(40,1);
for i=1:40;
    x(i,1)=1/(40+1-i);
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

% actual relative error
actual_error = norm(xhat-x,1)/norm(x,1)

%% Conlusion 
% Now they are numericall ystable




    