clc; clear; close all

x(1) = 1;
x(2) = 1;
ratio(1) = x(2)/x(1);


for n = 3:20
    x(n) = x(n-1) + x(n-2);
    ratio(n-1) = x(n)/x(n-1);
end

plot(ratio,'r--o')
title('Golden Ratio')
xlabel('n')
ylabel('ratio')



