clear;
clc;
close all;

f = @(x) x.^3 + 2*x - 2;

plotx = -3:0.01:3;
plot(plotx,f(plotx))
grid()

a_init = 0;
b_init = 1;

maxError = 0.01;
iterations = 20;

[zero,error,i] = bisectionMethod(f,a_init,b_init,maxError,iterations)


function [c,error,i] = bisectionMethod(f,a0,b0,errorMax,iterations)
    a = a0;
    b = b0;
    for i = 1:iterations
        c = (a+b)/2;
        error = (b-a)/2;
        fprintf("iter: %d and error %.4f \n",i,error)
        if error < errorMax
            break
        end
        
        if f(a)*f(c) < 0
            b = c;
        else
            a = c;
        end
       
    end
    fprintf('root is %.4f \n',c)
end