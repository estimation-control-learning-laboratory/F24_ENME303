clc; clear; close all
%% System Parameters
m = 10; % mass > 0
k = 10; % spring constant > 0
b = 5; % damping coefficient ≥ 1
A = [0      1; 
    -k/m -b/m];
B = [0; 1/m];

Force = 1;
u = Force;

%% Initialization
dt = 0.2;
t = 0:dt:50;

x_init = [1; 0];

%% Solving the ODE using ode45 function
% MCK_Dynamics = @(t,x)A*x + B*u;
% [~ , states] = ode45(MCK_Dynamics, t, x_init);

MCK_Dynamics = @(t,x)A*x + B*u;
[~ , states] = ode45(MCK_Dynamics, t, x_init);

%% Plots
plot(t, states(:,1))
title("Position")

figure
plot(t, states(:,2))
title("Velocity")

figure
plot(states(:,2),states(:,1))





