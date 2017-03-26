function J = computeCostMulti(X, y, theta)
% This function computes the cost for linear regression with multiple variables,
% using theta as the parameter for linear regression to fit the data points in X and y

% Number of training examples
m = length(y); 

% Hypothesis function
h = X * theta;

% Cost function
J = 1/(2*m) * (h-y)' * (h-y);

end
