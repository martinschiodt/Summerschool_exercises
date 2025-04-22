function [Uirec,recErr, c] = ReconstructIthRealization(U,Um,Phi,i,Nm)
% U: Full data matrix
% Um: Ensemble average of full data matrix
% Phi: POD modes (full matrix)
% i: realization number to reconstruct
% Nm: Number of modes used to reconstruct

% Load realization in question
Ui = U(:,i)-Um;

% preallocate
Uirec = zeros(size(Ui));
c = zeros(Nm,1); % coefficients in  Ui = sum(c_j*Phi_j)

% Compute reconstruction
for j = 1:Nm
    Phij = Phi(:,j);
    c(j) = Ui'*Phij;
    Uirec = Uirec + c(j)*Phij;
end

recErr = norm(Ui-Uirec);

end