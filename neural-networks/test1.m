%% Initialization
clear ; close all; clc

% 20x20 Input Images of Digits
input_layer_size  = 400;

% 10 labels, from 1 to 10
num_labels = 10;

%% =========== Loading and Visualizing Data =============

% Load Training Data
fprintf('Loading and Visualizing Data ...\n')

% Training data stored in arrays X, y
load('data.mat');
m = size(X, 1);

% Randomly select 100 data points to display
rand_indices = randperm(m);
sel = X(rand_indices(1:100), :);

displayData(sel);

fprintf('Press enter to continue.\n');
pause;