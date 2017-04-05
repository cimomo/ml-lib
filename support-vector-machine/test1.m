%% Initialization
clear ; close all; clc

%% =============== Loading and Visualizing Data ================

fprintf('Loading and Visualizing Data ...\n')

% Load from ex6data1: 
% You will have X, y in your environment
load('data1.mat');

% Plot training data
plotData(X, y);

fprintf('Press enter to continue.\n');
pause;