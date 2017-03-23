function J = computeCost(X, y, theta)
% This function computes the cost of using theta as the
% parameter for linear regression to fit the data points in X and y

% The number of training examples
m = length(y); 

% The hypothesis function, or the prediction
h = X * theta;

sqauredErrors = (h-y) .^ 2;

J = 1/(2*m) * sum(sqauredErrors);

end