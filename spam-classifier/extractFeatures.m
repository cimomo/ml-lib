function x = extractFeatures(word_indices)
% This funciton takes in a word_indices vector and produces a feature vector
% from the word indices.

n = 1899;
x = zeros(n, 1);

for i = word_indices
    x(i) = 1;
end 

end