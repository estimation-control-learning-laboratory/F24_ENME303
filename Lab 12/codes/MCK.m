clc; clear; close all
%% System Parametrs
% m = 10; % mass > 0
% k = 5; % spring constant > 0
% b = 3; % damping coefficient ≥ 1
% A = [0      1; 
%     -k/m -b/m];


m =10;
k = 5;
b = 3;

A = [0 1;-k/m -b/m];




[lambda v] = eig(A);

%% Initialization
% dt = 0.2;
% t = 0:dt:50;
% 
% x_init = [1; 0];


dt = 0.2;
t = 0:dt:50;


%% Solving the ODE using ode45 function
% MCK_Dynamics = @(t,x)A*x;
% [~ , states] = ode45(MCK_Dynamics, t, x_init);


MCK_Dynamics = @(t,x)A*x;

x_init = [2;0];


[~ , states] = ode45(MCK_Dynamics, t, x_init);




plot(t, states(:,1))
title("Position")

figure
plot(t, states(:,2))
title("Velocity")

%% Solcing the ODE using Homegenous solution
% for i = 1:length(t)
%     states_m2(i,:) = expm(A*t(i))*x_init;
% end

figure
plot(t, states_m2(:,1))
title("Position m2")

figure
plot(t, states_m2(:,2))
title("Velocity m2")






