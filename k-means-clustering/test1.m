%% Initialization
clear ; close all; clc

%% ================= Find Closest Centroids ====================

fprintf('Finding closest centroids.\n\n');

% Load an example dataset that we will be using
load('data.mat');

% Select an initial set of centroids
K = 3; % 3 Centroids
initial_centroids = [3 3; 6 2; 8 5];

% Find the closest centroids for the examples using the
% initial_centroids
idx = findClosestCentroids(X, initial_centroids);

fprintf('Closest centroids for the first 3 examples: \n')
fprintf(' %d', idx(1:3));
fprintf('\n(the closest centroids should be 1, 3, 2 respectively)\n');

fprintf('Press enter to continue.\n');
pause;