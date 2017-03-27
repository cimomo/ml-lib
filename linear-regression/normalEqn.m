function [theta] = normalEqn(X, y)
% This function computes the closed-form solution to linear 
% regression using the normal equations.

theta = pinv(X' * X) * X' * y;

end