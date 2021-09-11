function [y] = sineenvelopefcn(xx)

d = length(xx);

y = 0;
for i = 1 : (d - 1)
    y = y + ((sin(sqrt(xx(i + 1)^2 + xx(i)^2)))^2 - 0.5) / (0.001 * (xx(i + 1)^2 + xx(i)^2) + 1)^2 + 0.5;
end
end