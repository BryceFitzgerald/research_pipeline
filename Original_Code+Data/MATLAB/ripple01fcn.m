function [y] = ripple01fcn(xx)

d = length(xx);
assert(d == 2, 'Ripple 01 Function is only defined on a 2D space.');

x1 = xx(1);
x2 = xx(2);

sum1 = -exp(-2 * log(2) * ((x1 - 0.1) / 0.8)^2) * ((sin(5 * pi * x1))^6 + 0.1 * (cos(500 * pi * x1))^2);
sum2 = -exp(-2 * log(2) * ((x2 - 0.1) / 0.8)^2) * ((sin(5 * pi * x2))^6 + 0.1 * (cos(500 * pi * x2))^2);

y = sum1 + sum2;

y = y + 2.2; % Modified here.