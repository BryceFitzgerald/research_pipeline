function [y] = permdb(xx)

if (nargin == 1)
    b = 0.5;
end

d = length(xx);

% xx = xx + (1 : d); % Modified here.

outer = 0;

for ii = 1:d
	inner = 0;
    for jj = 1:d
		xj = xx(jj);
        inner = inner + (jj^ii+b)*((xj/jj)^ii-1);
    end
	outer = outer + inner^2;
end

y = outer;

end
