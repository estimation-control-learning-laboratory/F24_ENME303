function [s,p] = sum_prod(x)
s = 0;
p = 1;

for i = 1:length(x)
    s = s + x(i);
    p = p * x(i);
end
