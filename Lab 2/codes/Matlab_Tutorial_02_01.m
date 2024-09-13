clc; clear; close all
x = 0:0.1:2*pi;
y1 = sin(x);
y2 = cos(x);

plot(x,y1,'ro','LineWidth',2)
hold on
plot(x,y2,'b*','LineWidth',1)

xlabel('time(s)')
ylabel('amplitude')
title('Sin Function')
grid on
legend('sin(t)','cos(t)')


%%
close all

subplot(2,1,1)
plot(x,y1)


subplot(2,1,2)
plot(x,y2)

%%

for i = 1:60
    y3(i) = sin(x(i));
end