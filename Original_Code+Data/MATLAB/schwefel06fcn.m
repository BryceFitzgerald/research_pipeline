function [y] = schwefel06fcn(xx)

n = size(xx, 2);
assert(n == 2, 'Schwefel 06 function is defined only on a 2D space.');

x1 = xx(1);
x2 = xx(2);

y = max(abs(x1 + 2 * x2 - 7), abs(2 * x1 + x2 - 5));

