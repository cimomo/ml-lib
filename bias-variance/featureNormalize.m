function [X_norm, mu, sigma] = featureNormalize(X)
% This function normalizes the features in X so that
%   the mean value of each feature is 0 and the standard deviation is 1.

mu = mean(X);
X_norm = bsxfun(@minus, X, mu);

sigma = std(X_norm);
X_norm = bsxfun(@rdivide, X_norm, sigma);

end
