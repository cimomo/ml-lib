function centroids = computeCentroids(X, idx, K)
% This function returns the new centroids by computing the means of the 
% data points assigned to each centroid.

[m n] = size(X);
centroids = zeros(K, n);

for k = 1:K
    indices = idx == k;
    centroids(k, :) = mean(X(indices, :));
end

end

