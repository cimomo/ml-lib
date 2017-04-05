function [C, sigma] = optimizeParams(X, y, Xval, yval)
% This function returns your choice of C and sigma for Part 3 of the exercise
% where you select the optimal (C, sigma) learning parameters to use for SVM
% with RBF kernel.

C = 1;
sigma = 0.3;

values = [0.01 0.03 0.1 0.3 1 3 10 30];
err_min = inf;

for C = values
    for sigma = values
        model = svmTrain(X, y, C, @(x1, x2) gaussianKernel(x1, x2, sigma));
        p = svmPredict(model, Xval);
        err = mean(double(p ~= yval));
        if (err < err_min)
            C_candidate = C;
            sigma_candidate = sigma;
            err_min = err;
        end
    end
end

C = C_candidate;
sigma = sigma_candidate;

end
