function [y] = stochasticfcn(xx)

d = length(xx);

xx = abs(xx - 1 ./ (1:d));

xx = rand(1, d) .* xx;

y = sum(xx);