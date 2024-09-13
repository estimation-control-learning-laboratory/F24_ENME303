clear;
clc;
close all;

tic
x = zeros(1,20);
ratio = zeros(1,19);

x(1) = 1;
x(2) = 1;
ratio(1) = x(2)/x(1);

for i = 3:20
    x(i) = x(i-1) + x(i-2);
    ratio(i-1) = x(i)/x(i-1);
end

plot(ratio,'r--o')
title("Golden Ratio")
xlabel('n')
ylabel("ratio")
toc