function [X_poly] = polyFeatures(X, p)
% This function maps X (1D vector) into the p-th power where
% X_poly(i, :) = [X(i) X(i).^2 X(i).^3 ...  X(i).^p];

X_poly = zeros(numel(X), p);
X_poly(:, 1) = X;

for i = 2:p
    X_poly(:, i) = X .* X_poly(:, i-1);
end

end