function [U,V] = EvaluateDoubleGyreOnGrid(X,Y,T)
% Set up Double Gyre function
A = 0.1;
eps = 0.1;
omega = pi/5;
param = [A, eps, omega];
fun = @(t,X)DoubleGyre(t,X,param);

% Evaluate function on grid for each timestep
UV = zeros(length(T),2,numel(X));
for i = 1:length(T)
    UV(i,:,:) = fun(T(i), [X(:)'; Y(:)']);
end

% Separate U and V data
U = reshape(UV(:,1,:),[length(T),size(X)]);
V = reshape(UV(:,2,:),[length(T),size(X)]);

end