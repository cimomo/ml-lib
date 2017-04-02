function p = predict(Theta1, Theta2, X)
% This function predicts the label of an input given a trained neural network.

m = size(X, 1);
num_labels = size(Theta2, 1);
p = zeros(size(X, 1), 1);

a1 = [ones(m, 1) X];
z2 = a1 * Theta1';
a2 = [ones(size(z2), 1) sigmoid(z2)];
z3 = a2 * Theta2';
a3 = sigmoid(z3);

[predict_max, index_max] = max(a3, [], 2);

p = index_max;

end