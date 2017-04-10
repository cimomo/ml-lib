function Z = projectData(X, U, K)
% This function computes the reduced data representation when projecting only 
% on to the top k eigenvectors.

Z = zeros(size(X, 1), K);

U_reduce = U(:, 1:K);
Z = X * U_reduce;

end
