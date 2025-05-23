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
[X,Y] = GetSpatialGrid(nx,ny);

% Get velocity data
[U,V] = EvaluateDoubleGyreOnGrid(X,Y,T);

%% Exercise 1 - Plot
% Plot first and last time instance of U and V
% ------ Your Code ------

%% Exercise 2 - Data restructure
Up = zeros(1,1); % replace with your code
Vp = zeros(1,1); % replace with your code

%% Exercise 3 - POD
Upm = zeros(1,1); % replace with ensemble average
[Su, Phiu] = POD(Up, Upm); % Update code within POD function
Vpm = zeros(1,1); % replace with ensemble average
[Sv, Phiv] = POD(Vp, Vpm);

%% Exercise 4 - Spectrum
% Plot spectrum of U and V
% ------ Your Code ------

%% Exercise 5 - Modes
% Plot modes 1-8
% ------ Your Code ------

%% Exercise 6 - Projection
% Choose a realization i and project it onto the modes 1:n_modes
i = 1;
n_modes = 1;
% Update the code and function below:
X = 0; % Choose either U or V ensemble
Xm = 0; % Insert average corresponding to choice above
Phi = 0; % Choose POD basis
[Ui_proj,err_proj,c] = Projection(X,Xm,Phi,i,n_modes); 
disp(err_proj) % print projection error