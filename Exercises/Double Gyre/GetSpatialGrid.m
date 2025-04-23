function [X,Y] = GetSpatialGrid(nx,ny)
% nx,ny: number of grid points in respectively x and y domain.

% Spatial domain
lx = 2; % x \in [0,2]
ly = 1; % y \in [0,1]

% stepsize
dx = lx / (nx);
dy = ly / (ny);

% Get grid points
x = linspace(dx/2,lx-dx/2,nx);
y = linspace(dy/2,ly-dy/2,ny);

% Get meshgrid
[X,Y] = meshgrid(x,y);

end