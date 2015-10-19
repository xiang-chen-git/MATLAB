function A = heatmat(N)
% A = heatmat(N)
% find matrix A for square plate divided into N^2 smaller squares
% matrix has size M by M with M = (N-1)^2

%%%%%%%%%%%%%%%%%%%%%%%%
% YOU MUST CHANGE THESE VALUES!!
a_diag  = 1;
a_left  = -1/4;
a_right = -1/4;
a_down  = -1/4;
a_up    = -1/4;
%%%%%%%%%%%%%%%%%%%%%%%%

n = N-1;         % interior grid points are n by n grid
M = n^2;         % number of interior grid points
A = zeros(M,M);  % matrix A is of size M by M

for i=1:n        % for columns 1 to n
  for j=1:n      %   for rows 1 to n
    k = i + n*(j-1);         % k is number of point in row j, column i
    A(k,k) = a_diag;   
    if i>1
      A(k,k-1) =  a_left;    % k-1 is number of point on the left
    end
    if i<n
      A(k,k+1) =  a_right;   % k+1 is number of point on the right
    end
    if j>1
      A(k,k-n) =  a_down;    % k-n is number of point below
    end
    if j<n
      A(k,k+n) =  a_up;      % k+n is number of point above
    end
  end
end


