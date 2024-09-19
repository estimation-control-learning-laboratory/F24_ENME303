clear;
clc;
close all;

a_init = 0;
b_init = 1;

errorMax = 0.01; % Maximum error allowable

f = @(x) x.^3 + 2*x -2;

plotx = -3:0.01:3;
plot(plotx,f(plotx))
grid()


[zero, error] = bisectionMethod(f,a_init,b_init,errorMax);

function [c, error] = bisectionMethod(f,a0,b0,errorMax)


    if f(a0)*f(b0) < 0
        a=a0;
        b=b0;
        error = (b-a)/2;
        i = 1;
        while (error > errorMax)
            c = (a+b)/2;
            error = (b-a)/2;
            fprintf('iter: %d and error: %.4f \n',i,error)
            if f(a)*f(c) < 0
                b=c;
            else
                a=c;
            end
            i = i+1;
        end
        fprintf('root is %.4f \n',c)
    else
        disp('there is no root')
        c = [];
        error = [];
    end
end

