function idx = findClosestCentroids(X, centroids)
%FINDCLOSESTCENTROIDS computes the centroid memberships for every example
%   idx = FINDCLOSESTCENTROIDS (X, centroids) returns the closest centroids
%   in idx for a dataset X where each row is a single example. idx = m x 1 
%   vector of centroid assignments (i.e. each entry in range [1..K])
%

% Set K
K = size(centroids, 1);

% You need to return the following variables correctly.
idx = zeros(size(X,1), 1);

% ====================== YOUR CODE HERE ======================
% Instructions: Go over every example, find its closest centroid, and store
%               the index inside idx at the appropriate location.
%               Concretely, idx(i) should contain the index of the centroid
%               closest to example i. Hence, it should be a value in the 
%               range 1..K
%
% Note: You can use a for-loop over the examples to compute this.
%

for i = 1:length(idx)
    for j = 1:K
      t(j)=sum((X(i,:)-centroids(j,:)).^2); % according to formula I compute ||Xi - Mk||2 which is (X1i-Mk)2+(X2i-Mk)2
    endfor
    [x, ix] = min(t); %Function min return two values. The first is the min value, the second the position, in this case
                      %the positicion is K, which is the id of the cluster
    idx(i)=ix;
endfor



% =============================================================

end

