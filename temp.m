





% N=40

A = heatmat(40);
b = zeros(39*39,1);
for i=1:39*39;
    if i<=39
        b(i,1)=25;
    else
        b(i,1)=0;
    end
end
%find solution 
tic;
[L,U,p] = lu(A,'vector');
xhat = U\(L\b(p)); 
%time
time=toc
% estimated condition number
c = norm(A,1)*invnormest(L,U) 
% temperature (.5,.5)
i=40/2; j=40/2; k=i+(j-1)*(40-1); temperature_center = xhat(k)
% temperature (.25,.25)
i=40/4; j=40/4; k=i+(j-1)*(40-1); temperature_center = xhat(k)
% plot 
x=(0:40)/40; v=zeros(40+1,40+1); v(1:40+1,1)=100; v(2:40,2:40)=reshape(xhat,40-1,40-1); 
contour(x,x,v',30); axis equal; axis([0,1,0,1]); colorbar;