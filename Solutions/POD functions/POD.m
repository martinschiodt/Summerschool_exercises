function [S, Phi] = POD(U, Um)
% Proper Orthogonal Decomposition
% U: Data matrix
% Um: Data ensemble average

% Dimensions of Ensemble
[n_data,n_ensemble] = size(U);

% Use method of snapshots if ensemble size is less than data dimension,
% else use classic POD.
if n_ensemble < n_data
    % Build MOS kernel and decompose it
    K = 1/(n_ensemble) * (U-repmat(Um,1,n_ensemble))'*(U-repmat(Um,1,n_ensemble));
    [A,S,~] = svd(K,'econ');
    S = diag(S);

    % Compute POD modes
    Phi = POD_modes_from_A(U,Um,A,S,n_ensemble);
else
    % Build classic kernel and decompose it
    K = 1/(n_ensemble) * (U-repmat(Um,1,n_ensemble))*(U-repmat(Um,1,n_ensemble))';
    [Phi, S, ~] = svd(K,'econ');
    S = diag(S);
end


end