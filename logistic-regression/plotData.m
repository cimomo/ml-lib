function plotData(X, y)
% This function plots the data points X and y into a new figure  with + for positive examples
% and o for the negative examples. X is assumed to be a Mx2 matrix.

% Create new figure
figure; hold on;

pos = find(y == 1);
neg = find(y == 0);

plot(X(pos,1), X(pos,2), 'k+', 'LineWidth', 2, 'MarkerSize', 7);
plot(X(neg,1), X(neg,2), 'ko', 'MarkerFaceColor', 'y', 'MarkerSize', 7);

hold off;

end
