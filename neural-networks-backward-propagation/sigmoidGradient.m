function g = sigmoidGradient(z)
% This function computes the gradient of the sigmoid function evaluated at z

g = sigmoid(z) .* (1 - sigmoid(z));

end
