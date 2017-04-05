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

%% ==================== Training Linear SVM ====================

% Load from ex6data1: 
% You will have X, y in your environment
load('data1.mat');

fprintf('\nTraining Linear SVM ...\n')

% You should try to change the C value below and see how the decision
% boundary varies (e.g., try C = 1000)
C = 1;
model = svmTrain(X, y, C, @linearKernel, 1e-3, 20);
visualizeBoundaryLinear(X, y, model);

fprintf('Press enter to continue.\n');
pause;

%% =============== Implementing Gaussian Kernel ===============

fprintf('\nEvaluating the Gaussian Kernel ...\n')

x1 = [1 2 1]; x2 = [0 4 -1]; sigma = 2;
sim = gaussianKernel(x1, x2, sigma);

fprintf(['Gaussian Kernel between x1 = [1; 2; 1], x2 = [0; 4; -1], sigma = %f :' ...
         '\n\t%f\n(for sigma = 2, this value should be about 0.324652)\n'], sigma, sim);

fprintf('Press enter to continue.\n');
pause;