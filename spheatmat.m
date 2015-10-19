function A = spheatmat(N)
% A = spheatmat(N)
% find SPARSE matrix A for square plate divided into N^2 smaller squares
% matrix has size M by M with M = (N-1)^2

%%%%%%%%%%%%%%%%%%%%%%%%
% YOU MUST CHANGE THESE VALUES!!
a_diag  = 1;
a_left  = -1/4;
a_right = -1/4;
a_down  = -1/4;
a_up    = -1/4;
%%%%%%%%%%%%%%%%%%%%%%%%

n = N-1;       % interior grid points are n by n grid
M = n^2;       % number of interior grid points. Matrix A is of size M by M
nzmax = 5*M;   % number of nonzero matrix elements is <= 5*M (at most 5 nonzero elements per row)
iv = zeros(nzmax,1); jv = zeros(nzmax,1); av = zeros(nzmax,1); % initialize vectors
% describe nonzero matrix elements by vectors iv, jv, av of same length
% iv contains i values, jv contains j values, av contains matrix entries

m = 0;

for i=1:n      % for columns 1 to n
  for j=1:n    %   for rows 1 to n
    k = i + n*(j-1);      % k is number of point in row j, column i
    m=m+1;   iv(m)=k; jv(m)=k;   av(m)=a_diag;   % A(k,k)   = a_diag
    if i>1
      m=m+1; iv(m)=k; jv(m)=k-1; av(m)=a_left;   % A(k,k-1) = a_left
    end
    if i<n
      m=m+1; iv(m)=k; jv(m)=k+1; av(m)=a_right;  % A(k,k+1) = a_right
    end
    if j>1
      m=m+1; iv(m)=k; jv(m)=k-n; av(m)=a_down;   % A(k,k-n) = a_down
    end
    if j<n
      m=m+1; iv(m)=k; jv(m)=k+n; av(m)=a_up;     % A(k,k+n) = a_up
    end
  end
end

A = sparse(iv(1:m),jv(1:m),av(1:m)); % assemble sparse matrix from iv,jv,av

