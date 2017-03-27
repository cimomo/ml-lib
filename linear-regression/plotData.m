function plotData(x, y)
% This function plots the data points x and y into a new figure.

% open a new figure window
figure;

plot(x, y, 'rx', 'MarkerSize', 10);
xlabel('X axis');
ylabel('Y axis');

end
