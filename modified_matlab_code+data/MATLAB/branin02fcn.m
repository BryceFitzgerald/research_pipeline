function [y] = branin02fcn(xx)

d = length(xx);
assert(d == 2, 'Branin 02 Function is only defined on a 2D space.');

x1 = xx(1);
x2 = xx(2);

sum1 = (-1.275 * x1^2 / pi^2 + 5 * x1 / pi + x2 - 6)^2;
sum2 = (10 - 5 / 4 / pi) * cos(x1) * cos(x2);
sum3 = log(x1^2 + x2^2 + 1) + 10;
y = sum1 + sum2 + sum3;

y = y - 5.558914403893818; % Modifed here.