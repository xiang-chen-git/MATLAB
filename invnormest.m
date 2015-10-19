function [ainorm, v, it] = invnormest(L,U,t)
%   ainorm = invnormest(L,U)
%   given L,U from LU-decomposition estimate 1-norm of inverse matrix
%   Here L,U were obtained by [L,U,p] = lu(A,'vector') 
%   or for sparse A by [L,U,p,q] = lu(A,'vector') 
%   If A = C'*C is the Cholesky decomposition use
%     ainorm = invnormest(C',C)   
%
%   invnormest estimates the norm by solving (usually) 8 linear systems using the given LU-decomposition.
% 
%   [ainorm,v] = invnormest(L,U)
%   returns the estimate ainorm, and a vector v such that 
%     norm(A*v,1) = norm(v,1)/ainorm
%   If ainorm is large, then v is an approximate null vector of A.
%   (Note: if a column permutation q was used, v is an approximate null vector of A(:,q) instead of A.)

%   (This routine was modified from condest.)
%   The algorithm is based on the 1-norm condition estimator of Hager [1] and a
%   block oriented generalization of Hager's estimator given by Higham and
%   Tisseur [2].  The heart of the algorithm involves an iterative search
%   to estimate ||A^{-1}||_1 without computing A^{-1}. This is posed as the
%   convex, but nondifferentiable, optimization problem: 
%
%         max ||A^{-1}x||_1 subject to ||x||_1 = 1. 
%
%   See also NORMEST1, COND, NORM, RAND.

%   Reference:
%   [1] William W. Hager, Condition estimates, 
%       SIAM J. Sci. Stat. Comput. 5, 1984, 311-316, 1984.
% 
%   [2] Nicholas J. Higham and Fran\c{c}oise Tisseur, 
%       A Block Algorithm for Matrix 1-Norm Estimation 
%       with an Application to 1-Norm Pseudospectra, 
%       SIAM J. Matrix Anal. App. 21, 1185-1201, 2000. 
%
%   Nicholas J. Higham
%   Copyright 1984-2010 The MathWorks, Inc.
%   $Revision: 5.18.4.4 $  $Date: 2010/02/25 08:09:59 $

% if size(A,1) ~= size(A,2)
%   error('MATLAB:condest:NonSquareMatrix', 'Matrix must be square.')
% end
% if isempty(A), c = 0; v = []; return, end

if nargin < 3, t = []; end

k = find(abs(diag(U))==0);
if ~isempty(k)
   ainorm = Inf;
   n = length(U);
   v = zeros(n,1);
   k = min(k);
   v(k) = 1;
   if k > 1
      v(1:k-1) = -U(1:k-1,1:k-1)\U(1:k-1,k);
   end
else
   warns = warning('query','all');
   temp = onCleanup(@()warning(warns));
   warning('off','all');   

%   defaultStream = RandStream.getDefaultStream; savedState = defaultStream.State;
%   reset(RandStream.getDefaultStream);        % use the same random numbers each time
   
   [ainorm, temp, v,it] = normest1(@condestf,t);

%   defaultStream.State = savedState;           
end
v = v/norm(v,1);

    function f = condestf(flag, X)
        %CONDESTF   Function used by CONDEST.        
        if isequal(flag,'dim')
            f = max(size(L));
        elseif isequal(flag,'real')
            f = isreal(L) && isreal(U);
        elseif isequal(flag,'notransp')
            f = U\(L\X);
        elseif isequal(flag,'transp')
            f = L'\(U'\X);
        end
    end

end
