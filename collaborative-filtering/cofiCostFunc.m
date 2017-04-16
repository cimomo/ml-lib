function [J, grad] = cofiCostFunc(params, Y, R, num_users, num_movies, ...
                                  num_features, lambda)
% Computes the cost function for collaborative filtering.

% Unfold the U and W matrices from params
X = reshape(params(1:num_movies*num_features), num_movies, num_features);
Theta = reshape(params(num_movies*num_features+1:end), ...
                num_users, num_features);

J = 0;
X_grad = zeros(size(X));
Theta_grad = zeros(size(Theta));

H = X * Theta';
J = (1/2) * sum(sum(((H-Y) .* R) .^ 2));

X_grad = ((H-Y) .* R) * Theta;
Theta_grad = ((H-Y) .* R)' * X;


% Add regularization
J = J + (lambda/2) * sum(sum(Theta.^2)) + (lambda/2) * sum(sum(X.^2));
X_grad = X_grad + lambda * X;
Theta_grad = Theta_grad + lambda * Theta;

grad = [X_grad(:); Theta_grad(:)];

end
