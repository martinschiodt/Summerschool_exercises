%% Create data from Lorenz attractor
clear,clc,close all
addpath('Double Gyre/')
addpath('POD functions/')

% Set up temporal grid
t0 = 0;
tf = 10;
nt = 1000;
T = linspace(t0,tf,nt)';
dt = T(2)-T(1);

% Set up spatial grid
nx = 20;
ny = 10;
[X,Y] = GetSpatialGrid(nx,ny);

% Get velocity data
[U,V] = EvaluateDoubleGyreOnGrid(X,Y,T);

%% Exercise 1 - Data restructure
Up = reshape(U, nt, nx*ny);
Vp = reshape(V, nt, nx*ny);

%% Exercise 2 - POD / Method of snapshots
Upm = mean(Up,2);
[Su, Phiu] = POD(Up, Upm);
Vpm = mean(Vp,2);
[Sv, Phiv] = POD(Vp, Vpm);

%% Exercise 3 - Spectrum
close all
loglog(Su,'-*')
hold on
loglog(Sv,'-*')

%% Exercise 4 - Modes
close all
figure(1)
for i = 1:6
    subplot(3,2,i)
    plot(T,Phiu(:,i))
    ylim([-0.07,0.07])
end

figure(2)
for i = 1:6
    subplot(3,2,i)
    plot(T,Phiv(:,i))
    ylim([-0.07,0.07])
end