%% Initialization
clear ; close all; clc

%% =============== Loading movie ratings dataset ================

fprintf('Loading movie ratings dataset.\n\n');

%  Load data
load ('movies.mat');

%  Y is a 1682x943 matrix, containing ratings (1-5) of 1682 movies on 
%  943 users
%
%  R is a 1682x943 matrix, where R(i,j) = 1 if and only if user j gave a
%  rating to movie i

%  From the matrix, we can compute statistics like average rating.
fprintf('Average rating for movie 1 (Toy Story): %f / 5\n\n', ...
        mean(Y(1, R(1, :))));

%  We can "visualize" the ratings matrix by plotting it with imagesc
imagesc(Y);
ylabel('Movies');
xlabel('Users');

fprintf('\nPress enter to continue.\n');
pause;

%% ============ Collaborative Filtering Cost Function ===========

%  Load pre-trained weights (X, Theta, num_users, num_movies, num_features)
load ('movieParams.mat');

%  Reduce the data set size so that this runs faster
num_users = 4; num_movies = 5; num_features = 3;
X = X(1:num_movies, 1:num_features);
Theta = Theta(1:num_users, 1:num_features);
Y = Y(1:num_movies, 1:num_users);
R = R(1:num_movies, 1:num_users);

%  Evaluate cost function
J = cofiCostFunc([X(:) ; Theta(:)], Y, R, num_users, num_movies, ...
               num_features, 0);
           
fprintf(['Cost at loaded parameters: %f '...
         '\n(this value should be about 22.22)\n'], J);

fprintf('\nPress enter to continue.\n');
pause;


%% ============== Collaborative Filtering Gradient ==============

fprintf('\nChecking Gradients (without regularization) ... \n');

%  Check gradients by running checkNNGradients
checkCostFunction;

fprintf('\nPress enter to continue.\n');
pause;


%% ========= Collaborative Filtering Cost Regularization ========

%  Evaluate cost function
J = cofiCostFunc([X(:) ; Theta(:)], Y, R, num_users, num_movies, ...
               num_features, 1.5);
           
fprintf(['Cost at loaded parameters (lambda = 1.5): %f '...
         '\n(this value should be about 31.34)\n'], J);

fprintf('\nPress enter to continue.\n');
pause;


%% ======= Collaborative Filtering Gradient Regularization ======

fprintf('\nChecking Gradients (with regularization) ... \n');

%  Check gradients by running checkNNGradients
checkCostFunction(1.5);

fprintf('\nPress enter to continue.\n');
pause;