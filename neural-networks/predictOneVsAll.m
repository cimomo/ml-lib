function p = predictOneVsAll(all_theta, X)
% This function predicts the label for a trained one-vs-all classifier. The labels 
% are in the range 1..K, where K = size(all_theta, 1).

m = size(X, 1);
num_labels = size(all_theta, 1);
p = zeros(size(X, 1), 1);
X = [ones(m, 1) X];     

h = sigmoid(X * all_theta');
[predict_max, index_max] = max(h, [], 2);
p = index_max;

end
