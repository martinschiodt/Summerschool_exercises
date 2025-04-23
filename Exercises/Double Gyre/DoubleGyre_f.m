function f = DoubleGyre_f(t,X,param)
a = param(2)*sin(param(3)*t);
b = 1-2*param(2)*sin(param(3)*t);
f = a*X(1,:).*X(1,:) + b*X(1,:);
end