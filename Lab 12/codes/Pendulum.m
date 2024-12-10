clc; clear; close all
%% System Parameters
l = 10;
g = 10;

%% Initialization
dt = 0.1;
t = 0:dt:100;

x_init(1) = 20*rand - 10;
x_init(2) = 4*rand -2;

%% Solving the ODE using ode45 function
[~, States] = ode45(@(t,x)Pend_Dynamics(t,x,g,l),t,x_init);


%% Plots
plot(t,States(:,1))

figure
plot(t,States(:,2))


function x_dot = Pend_Dynamics(t,x,g,l)
x_dot = zeros(2,1);
x_1 = x(1);
x_2 = x(2);

x_dot(1) = x_2;
x_dot(2) = -(g/l)*sind(x_1);
end

