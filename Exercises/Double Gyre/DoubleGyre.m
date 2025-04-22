function dxdt = DoubleGyre(t,X,param)
% A = param(1)
% eps = param(2)
% omega = param(3)

% dxdt = zeros(2,1);
% dxdt(1) = -pi*param(1) * sin(pi*DoubleGyre_f(t,x,param)) * cos(pi*x(2));
% dxdt(2) = pi*param(1) * cos(pi*DoubleGyre_f(t,x,param)) * sin(pi*x(2))*DoubleGyre_df(t,x,param);

dxdt = zeros(size(X));
dxdt(1,:) = -pi*param(1) * sin(pi*DoubleGyre_f(t,X,param)) .* cos(pi*X(2,:));
dxdt(2,:) = pi*param(1) * cos(pi*DoubleGyre_f(t,X,param)) .* sin(pi*X(2,:)) .* DoubleGyre_df(t,X,param);


end
