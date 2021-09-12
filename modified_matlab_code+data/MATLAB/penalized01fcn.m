function [y] = penalized1fcn(xx)

d = length(xx);
y = zeros(1, d);
sum1 = 0;
sum2 = 0;
a=10;
k=100;
m=4;

for i = 1 : d
    y(i) = 1 + 0.25 * (xx(i) + 1);
end

for i = 1 : (d - 1)
    sum1 = sum1 + (y(i) - 1)^2 * (1 + 10 * (sin(pi * y(i + 1)))^2);
end

for i = 1 : d
    
    if xx(i) > a
       u = k * (xx(i) - a)^m;
    elseif xx(i) < (-a)
       u = k * (-xx(i) - a)^m;
    else
        u = 0;
    end
    
    sum2 = sum2 + u;
end

y = (pi / d) * (10 * (sin(pi * y(1)))^2 + sum1 + (y(d) - 1)^2) + sum2;
end