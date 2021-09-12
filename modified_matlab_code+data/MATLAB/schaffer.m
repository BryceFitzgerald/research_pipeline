function [y] = schaffer(xx)

d = length(xx);
sum = 0;

for i = 1 : (d - 1)
    sum = sum + (xx(i)^2 + xx(i + 1)^2)^0.25 * (sin(50 * (xx(i)^2 + xx(i + 1)^2)^0.10)^2 + 1.0);
end

y = sum;