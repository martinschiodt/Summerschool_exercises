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
Up = zeros(1,1); % replace with your code
Vp = zeros(1,1); % replace with your code

%% Exercise 2 - POD / Method of snapshots
Upm = zeros(1,1); % replace with ensemble average
[Su, Phiu] = POD(Up, Upm); % Update code within POD function
Vpm = zeros(1,1); % replace with ensemble average
[Sv, Phiv] = POD(Vp, Vpm);

%% Exercise 3 - Spectrum
% Plot spectrum of U and V
% ------ Your Code ------

%% Exercise 4 - Modes
% Plot modes 1-6
% ------ Your Code ------