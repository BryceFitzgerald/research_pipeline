function [y] = perm0db(xx, b)

if (nargin == 1)
    b = 10;
end

d = length(xx);

global SimulatedOptimalSolution;                           % Modified here.

xx = xx + 1 ./ (1:d) - SimulatedOptimalSolution;%1;%d / 2; % Modified here.

outer = 0;

for ii = 1:d
	inner = 0;
	for jj = 1:d
		xj = xx(jj);
        inner = inner + (jj+b)*(xj^ii-(1/jj)^ii);
	end
	outer = outer + inner^2;
end

y = outer;

end