clc;
clear all;


j1 = 0.2;
j2 = j1;
j3 = j1;


x_init = [pi/6;0;pi/8;0];

u =[0.1;0];

t_span = [0 0.5];

[time, states] = ode45(@(t,x)two_dof_platform(t,x,u,j1,j2,j3), t_span, x_init);

figure(1)
plot(time, states(:,1))


figure(2)
plot(time, states(:,3))







function x_dot = two_dof_platform(t,x,u,j1,j2,j3)

x_dot = zeros(4,1);


x_dot(1) = x(2);

x_dot(2) = (1/j2)* (u(1) - (j3-j1)*sin(x(1))*cos(x(1))*x(4)^2);

x_dot(3) = x(4);

x_dot(4) = (1/(j3*cos(x(1)))) * (u(2) - (-j2+j1)*sin(x(1))*x(2)*x(4)+j3*sin(x(1))*x(4));



end