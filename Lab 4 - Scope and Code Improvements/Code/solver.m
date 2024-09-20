clc; clear; close all;

% f1 = @(x) x.^2+3.*x+2;

xval = -10:0.01:10;
plot(xval,f1(xval))
grid on;

x0 =-5;
options = optimoptions('fsolve','Display','iter');

[x, fval] = fsolve(@f1,x0,options);


function output = f1(x)
    output = x.^2+3.*x+2;
end