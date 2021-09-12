function [y] = mishra04fcn(xx)

d = length(xx);
assert(d == 2, 'Mishra 04 Function is only defined on a 2D space.');

x1 = xx(1);
x2 = xx(2);

sum1 = abs(x1^2 + x2);
sum1 = sqrt(sum1);
sum1 = abs(sin(sum1));
y = sum1^0.5 + (x1 + x2) / 100;

y = y + 0.199406970088833; % Modified here.