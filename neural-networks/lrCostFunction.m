function [J, grad] = lrCostFunction(theta, X, y, lambda)
% This function computes the cost and gradient for logistic regression with regularization.

% Number of training examples
m = length(y);

h = sigmoid(X*theta);

theta_reg = [0; theta(2:size(theta))];

J = (1/m) * (-y' * log(h) - (1-y)' * log(1-h)) + (lambda/(2*m)) * theta_reg' * theta_reg;

grad = (1/m) * (X' * (h-y) + lambda * theta_reg);

end