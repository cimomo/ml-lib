function [J, grad] = costFunctionReg(theta, X, y, lambda)
% This function computes the cost and gradient for logistic regression with regularization
%  J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%  theta as the parameter for regularized logistic regression and the
%  gradient of the cost w.r.t. to the parameters. 

% Number of training examples
m = length(y);

h = sigmoid(X*theta);

theta_reg = [0; theta(2:size(theta))];

J = (1/m) * (-y' * log(h) - (1-y)' * log(1-h)) + (lambda/(2*m)) * theta_reg' * theta_reg;

grad = (1/m) * (X' * (h-y) + lambda * theta_reg);

end
