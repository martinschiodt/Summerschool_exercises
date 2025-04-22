function df = DoubleGyre_df(t,X,param)
a = param(2)*sin(param(3)*t);
b = 1-2*param(2)*sin(param(3)*t);
df = 2*a*X(1,:) + b;
end