function [J, grad] = costFunction(theta, X, y)
% This function computes cost and gradient for logistic regression

% Number of training examples
m = length(y);

h = sigmoid(X * theta);

J = (1/m) * (-y' * log(h) - (1-y)' * log(1-h));

grad = (1/m) * X' * (h-y);

end
