clc;

clear all;


l = 1;
g = 9.98;

x_init = [pi/4;0];

t_span = [0 5];


[time, state] = ode45(@(t,x)pendulum_dynamics(x,g,l),t_span,x_init);

plot(time,state(:,1))




function x_dot = pendulum_dynamics(x,g,l)

x_dot = zeros(2,1);

x_dot(1) = x(2);
x_dot(2) = (-g/l)* sin(x(1));



end