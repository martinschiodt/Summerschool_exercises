function Phi = POD_modes_from_A(U,Um,A,S,Ne)
% Compute orthogonal basis Phi
Phi = (U-repmat(Um,1,Ne))*A;

% Find first case of near zero eigenvalues
tol = 1e-14;
maxModes = find(S < tol ,1)-1;
if isempty(maxModes)
    maxModes = Ne-1;
end

% normalize
for i = 1:maxModes
    Phi(:,i) = Phi(:,i) / norm(Phi(:,i));
end

end