function [Uirec,recErr,c] = ReconstructRealization(U,Um,Phi,i,n_modes)
% Reconstructs realization i using POD modes.
% ------ Input ------
% U         : Data matrix
% Um        : Ensemble average
% Phi       : POD modes (full matrix)
% i         : realization number to reconstruct
% n_modes   : Number of modes used to reconstruct
% ------ Output ------
% Uirec     : Reconstruction of realization i
% recErr    : reconstruction error
% c         : Projection coefficients

% Load realization in question
Ui = U(:,i)-Um;

% preallocate
Uirec = zeros(size(Ui));
c = zeros(n_modes,1); % coefficients in  Ui = sum(c_j*Phi_j)

% Compute reconstruction
for j = 1:n_modes
    % ------ Your Code ------
end

% Evaluate reconstruction error
recErr = norm(Ui-Uirec);

end