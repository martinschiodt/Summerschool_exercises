function [S, Phi] = POD(U, Um)
% Proper Orthogonal Decomposition
% U: Data matrix
% Um: Data ensemble average

% Dimensions of Ensemble
[n_data,n_ensemble] = size(U);

% Set up POD kernel
K = zeros(1,1); % replace with your code

% Decompose K using svd(K,'econ') to obtain Phi and S
[Phi, S, ~] = svd(K,'econ');
S = diag(S);

end