function [X_norm, mu, sigma] = normalizeFeatures(X)
% This function normalizes the features in X so that the mean value of 
% each feature is 0 and the standard deviation is 1. This is a helpful 
% preprocessing step to make gradient descent more efficient.

X_norm = X;
mu = zeros(1, size(X, 2));
sigma = zeros(1, size(X, 2));   

% Compute mean and standard deviation
mu = mean(X);
sigma = std(X);

% Normalize each column of X
for i = 1:size(X, 2),
    X_norm(:, i) = (X(:, i) - mu(i)) / sigma(i);
end

end
