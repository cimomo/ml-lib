function [mu sigma2] = estimateGaussian(X)
% This function estimates the parameters of a Gaussian distribution.

[m, n] = size(X);

mu = (1/m) .* sum(X);

Mu = (mu' * ones(1, m))';

sigma2 = (1/m) .* sum((X - Mu) .^ 2);

end
