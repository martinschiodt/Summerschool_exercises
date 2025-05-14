%% Create data from Lorenz attractor
clear,clc,close all
addpath('Double Gyre/')
addpath('POD functions/')

% Set up temporal grid
t0 = 0;
tf = 10000;
nt = 500;
T = linspace(t0,tf,nt)';
dt = T(2)-T(1);

% Set up spatial grid
nx = 20;
ny = 10;
nz = nx*ny;
[X,Y] = GetSpatialGrid(nx,ny);

% Get velocity data
[U,V] = EvaluateDoubleGyreOnGrid(X,Y,T);

%% Exercise 1 - Plot
close all
% Plot first and last time instance
subplot(2,2,1)
contourf(X,Y,squeeze(U(1,:,:)))
colorbar
ylabel('$t_0$', 'fontsize', 18, 'interpreter', 'latex')
title('$U$', 'fontsize', 18, 'interpreter', 'latex')

subplot(2,2,2)
contourf(X,Y,squeeze(V(1,:,:)))
colorbar
title('$V$', 'fontsize', 18, 'interpreter', 'latex')

subplot(2,2,3)
contourf(X,Y,squeeze(U(end,:,:)))
colorbar
ylabel('$t_f$', 'fontsize', 18, 'interpreter', 'latex')

subplot(2,2,4)
contourf(X,Y,squeeze(V(end,:,:)))
colorbar

%% Exercise 2 - Data restructure
Up = reshape(U, nt, nz)';
Vp = reshape(V, nt, nz)';

%% Exercise 3 - POD
Upm = mean(Up,2);
[Su, Phiu] = POD(Up, Upm);
Vpm = mean(Vp,2);
[Sv, Phiv] = POD(Vp, Vpm);

%% Exercise 4 - Spectrum
close all
loglog(Su,'-*')
hold on
loglog(Sv,'-*')

%% Exercise 5 - Modes
close all
figure(1)
for i = 1:8
    subplot(4,2,i)
    contourf(X,Y,reshape(Phiu(:,i),ny,nx))
end

figure(2)
for i = 1:8
    subplot(4,2,i)
    contourf(X,Y,reshape(Phiv(:,i),ny,nx))
end

%% Exercise 6 - Projection
% Choose a realization i and project it onto the modes 1:n_modes
i = 1;
n_modes = 1;
% Update the code and function below:
X = Up; % Choose either U or V ensemble
Xm = Upm; % Insert average corresponding to choice above
Phi = Phiu; % Choose POD basis
[Ui_proj,err_proj,c] = Projection(X,Xm,Phi,i,n_modes); 
disp(err_proj)