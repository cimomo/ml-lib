%% Initialization
clear ; close all; clc

% 20x20 Input Images of Digits
input_layer_size  = 400;
% 25 hidden units
hidden_layer_size = 25;
% 10 labels, from 1 to 10   
num_labels = 10;

%% =========== Loading and Visualizing Data =============

% Load Training Data
fprintf('Loading and Visualizing Data ...\n')

load('data.mat');
m = size(X, 1);

% Randomly select 100 data points to display
sel = randperm(size(X, 1));
sel = sel(1:100);

displayData(X(sel, :));

fprintf('Press enter to continue.\n');
pause;