clc
clear all
close all


tspan = [0 10];
x0 = [1;1];
[t,x] = ode45(@pendulum,tspan,x0);

plot(t,x)

%%

figure
[t,x] = ode45(@mck,tspan,x0);
plot(t,x)
%%


% Linear MCK Dynamics
function xdot = mck(t,x)
    k = 1;
    c = 1;
    m = 1;
    A = [0 1; -k/m -c/m];
    xdot = A*x;
end

% Nonlinear Pendulum 
function xdot = pendulum(t,x)
    xdot(1) = x(2);
    xdot(2) = -1*sin(x(1));
    xdot = xdot(:);
end