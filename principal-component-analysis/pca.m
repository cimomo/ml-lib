function [U, S] = pca(X)
% This function runs principal component analysis on the dataset X.

[m, n] = size(X);
U = zeros(n);
S = zeros(n);

Sigma = (1/m) * X' * X;
[U, S, V] = svd(Sigma);

end
