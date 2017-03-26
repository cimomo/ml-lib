function [theta, J_history] = gradientDescentMulti(X, y, theta, alpha, num_iters)
% This function performs gradient descent to learn theta that minimizes the cost function.

% Number of training examples
m = length(y);

% Value of the cost function after each iteration
J_history = zeros(num_iters, 1);

% Number of features
n = size(X, 2);

for iter = 1:num_iters

    h = X * theta;
    theta = theta - alpha * ((1/m) * (X' * (h-y)));

    % Save the cost J in every iteration    
    J_history(iter) = computeCostMulti(X, y, theta);

end

end