clc;
clear all;

j1 = 0.2;
j2 = 0.2;
j3 = 0.5;


x_init = [0 0 0 0]';
t = [0 0.1];
u = [1;1];

[time, state] = ode45(@(t,x)two_dof_platform_eq(t,x,u,j1,j2,j3), t, x_init);



figure(1)
plot(time, state(:,1))
figure(2)
plot(time, state(:,2))



function x_dot = two_dof_platform_eq(t,x,u,j1,j2,j3)

x_dot = zeros(4,1);

x_dot(1) = x(3);
x_dot(2) = x(4);
x_dot(3) = (1/j2)* (u(1) - (j3-j1)*sin(x(1))*cos(x(1))*x(4)^2);
x_dot(4) = (1/(j3*cos(x(1)))) * (u(2) - (-j2+j1)*sin(x(1))*x(3)*x(4)+j3*sin(x(1))*x(4));

end