%% Initialization
clear ; close all; clc

%% =========== Loading and Visualizing Data =============

% Load Training Data
fprintf('Loading and Visualizing Data ...\n')

% You will have X, y, Xval, yval, Xtest, ytest in your environment
load ('data.mat');

% Number of examples
m = size(X, 1);

% Plot training data
plot(X, y, 'rx', 'MarkerSize', 10, 'LineWidth', 1.5);
xlabel('Change in water level (x)');
ylabel('Water flowing out of the dam (y)');

fprintf('Press enter to continue.\n');
pause;