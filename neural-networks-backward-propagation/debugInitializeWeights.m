function W = debugInitializeWeights(fan_out, fan_in)
% This function initialize the weights of a layer with fan_in
% incoming connections and fan_out outgoing connections using a fixed strategy.

W = zeros(fan_out, 1 + fan_in);

% Initialize W using "sin", this ensures that W is always of the same
% values and will be useful for debugging
W = reshape(sin(1:numel(W)), size(W)) / 10;

end
