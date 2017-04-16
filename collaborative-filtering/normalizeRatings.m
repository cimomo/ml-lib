function [Ynorm, Ymean] = normalizeRatings(Y, R)
% This function preprocess data by subtracting mean rating for every 
% movie so that each movie has a rating of 0 on average, and 
% returns the mean rating in Ymean.

[m, n] = size(Y);
Ymean = zeros(m, 1);
Ynorm = zeros(size(Y));
for i = 1:m
    idx = find(R(i, :) == 1);
    Ymean(i) = mean(Y(i, idx));
    Ynorm(i, idx) = Y(i, idx) - Ymean(i);
end

end
