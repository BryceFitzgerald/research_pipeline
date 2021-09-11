function [y] = bukin06fcn(xx)

d = length(xx);
assert(d == 2, 'Bukin 06 Function is only defined on a 2D space.');

x1 = xx(1);
x2 = xx(2);

sum1 = abs(x2 - 0.01 * x1^2);
sum1 = sqrt(sum1);
y = 100 * sum1 + 0.01 * abs(x1 + 10);