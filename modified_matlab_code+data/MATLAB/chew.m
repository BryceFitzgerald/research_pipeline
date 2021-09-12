function [y] = chew(xx)

Radius = sqrt(sum(xx .^ 2));

y = floor((sqrt(8 * Radius + 1) - 1) / 2);

return;