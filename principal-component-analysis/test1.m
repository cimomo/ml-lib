%% Initialization
clear ; close all; clc

%% ================== Part 1: Load Example Dataset  ===================

fprintf('Visualizing example dataset for PCA.\n\n');

%  The following command loads the dataset. You should now have the 
%  variable X in your environment
load ('data.mat');

%  Visualize the example dataset
plot(X(:, 1), X(:, 2), 'bo');
axis([0.5 6.5 2 8]); axis square;

fprintf('Press enter to continue.\n');
pause;