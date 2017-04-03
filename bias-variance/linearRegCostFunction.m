function [J, grad] = linearRegCostFunction(X, y, theta, lambda)
% This function computes the cost and gradient for regularized linear 
% regression with multiple variables.

m = length(y);
J = 0;
grad = zeros(size(theta));

h = X * theta;

theta_reg = [0; theta(2:size(theta))];

sqauredErrors = (h-y) .^ 2;

J = 1/(2*m) * sum(sqauredErrors) + (lambda/(2*m)) * theta_reg' * theta;

grad = (1/m) * (X' * (h-y) + lambda * theta_reg);

end
