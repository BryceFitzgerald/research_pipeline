function [y] = trefethenfcn(xx)

d = length(xx);

assert(d == 2, 'Trefethen Function is only defined on a 2D space.');

x1 = xx(1);
x2 = xx(2);

y = 0.25 * x1^2 + 0.25 * x2^2 + exp(sin(50 * x1)) - sin(10 * x1 + 10 * x2) + sin(60 * exp(x2)) + sin(70 * sin(x1)) + sin(sin(80 * x2));

y = y + 3.3068686474; % Modified here.
end

