function [y] = step1(xx)

% xx = xx - 5.12;

% d = length(xx);

% y = 6 * d + sum(floor(xx));

y = sum(floor(abs(xx)));

