function [J grad] = nnCostFunction(nn_params, ...
                                   input_layer_size, ...
                                   hidden_layer_size, ...
                                   num_labels, ...
                                   X, y, lambda)
% This function implements the neural network cost function for a two layer
% neural network which performs classification.
% The parameters for the neural network are "unrolled" into the vector
% nn_params and need to be converted back into the weight matrices. 
% 
% The returned parameter grad should be a "unrolled" vector of the
% partial derivatives of the neural network.
%

% Reshape nn_params back into the parameters Theta1 and Theta2, the weight matrices
% for our 2 layer neural network
Theta1 = reshape(nn_params(1:hidden_layer_size * (input_layer_size + 1)), ...
                 hidden_layer_size, (input_layer_size + 1));

Theta2 = reshape(nn_params((1 + (hidden_layer_size * (input_layer_size + 1))):end), ...
                 num_labels, (hidden_layer_size + 1));

% Initialization
m = size(X, 1);
J = 0;
Theta1_grad = zeros(size(Theta1));
Theta2_grad = zeros(size(Theta2));

I = eye(num_labels);
Y = zeros(m, num_labels);
for i = 1:m
    Y(i, :) = I(y(i), :);
end

% Feedforward propagation
A1 = [ones(m, 1) X];
Z2 = A1 * Theta1';
A2 = [ones(size(Z2, 1), 1) sigmoid(Z2)];
Z3 = A2 * Theta2';
A3 = sigmoid(Z3);
H = A3;

% Cost without reguarization
J = (1/m) * sum(sum((-Y) .* log(H) - (1-Y) .* log(1-H)));

% Add regularization
penalty = (lambda/(2*m)) * (sum(sum(Theta1(:, 2:end) .^ 2)) + sum(sum(Theta2(:, 2:end) .^ 2)));
J = J + penalty;

% Backward propagation
delta3 = A3 - Y;
delta2 = (delta3 * Theta2 .* sigmoidGradient([ones(size(Z2, 1), 1) Z2]))(:, 2:end);

Delta1 = delta2' * A1;
Delta2 = delta3' * A2;

Theta1_grad = Delta1 ./ m;
Theta2_grad = Delta2 ./ m;

% Add regularization
Theta1_grad = Theta1_grad + (lambda/m) * [zeros(size(Theta1, 1), 1) Theta1(:, 2:end)];
Theta2_grad = Theta2_grad + (lambda/m) * [zeros(size(Theta2, 1), 1) Theta2(:, 2:end)];

% Unroll gradients
grad = [Theta1_grad(:) ; Theta2_grad(:)];

end
