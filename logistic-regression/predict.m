function p = predict(theta, X)
% This function predicts whether the label is 0 or 1 using the learned logistic 
% regression parameters theta

p = sigmoid(X*theta) > 0.5;

end
