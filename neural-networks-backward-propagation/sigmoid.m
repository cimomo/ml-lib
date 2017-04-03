function g = sigmoid(z)
% This function computes the sigmoid of z.

g = 1.0 ./ (1.0 + exp(-z));
end
