function [Ui_proj,err_proj,c] = Projection(U,Um,Phi,i,n_modes)
% Projects realization i onto the POD basis. 
% ------ Input ------
% U         : Data matrix
% Um        : Ensemble average
% Phi       : POD modes (full matrix)
% i         : realization number to reconstruct
% n_modes   : Number of modes used to reconstruct
% ------ Output ------
% Ui_proj   : Projection of realization i
% err_proj  : Projection error
% c         : Projection coefficients

% Load realization in question
Ui = U(:,i)-Um;

% preallocate
Ui_proj = zeros(size(Ui));
c = zeros(n_modes,1); % coefficients in  Ui = sum(c_j*Phi_j)

% Compute projection
for j = 1:n_modes
    % ------ Your Code ------
end

err_proj = norm(Ui-Ui_proj);

end
