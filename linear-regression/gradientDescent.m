function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
% This function performs gradient descent to learn the theta value 
% that minimizes the cost function.

% Number of training examples
m = length(y);

% Records the values of the cost function after each iteration. This should decrease after each step.
J_history = zeros(num_iters, 1);

for iter = 1:num_iters

    x = X(:,2);
    h = X * theta;

    theta_0 = theta(1) - alpha * (1/m) * sum(h-y);
    theta_1 = theta(2) - alpha * (1/m) * sum((h-y) .* x);

    theta = [theta_0; theta_1];
 
    J_history(iter) = computeCost(X, y, theta);

end

end
