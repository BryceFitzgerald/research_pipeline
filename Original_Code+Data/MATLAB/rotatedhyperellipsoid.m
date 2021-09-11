function [y] = rotatedhyperellipsoid(xx)

d = length(xx);
outer = 0;

for ii = 1:d
    inner = 0;
    for jj = 1:ii
        xj = xx(jj);
        inner = inner + xj^2;
    end
    outer = outer + inner;
end

y = outer;

end
