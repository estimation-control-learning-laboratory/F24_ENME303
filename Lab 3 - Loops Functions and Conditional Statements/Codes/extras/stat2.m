function [m,s] = stat2(x)
    n = length(x);
    m = avg(x,n);
    s = sum((x-m).^2/n);
end

function m = avg(x,n)
    m = sum(x)/n;
end