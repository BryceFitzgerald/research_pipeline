function [y] = schwef(xx)

d = length(xx);

for i = 1 : d                                            % Modified here.
    xx(i) = xx(i) + 0; % (420.968746 - (mod(i - 1, 10) + 1)); % + 420.968746;   % Modified here.
end                                                      % Modified here.

sum = 0;
for ii = 1:d
	xi = xx(ii);
	sum = sum + xi*sin(sqrt(abs(xi)));
end

y = 418.9828872724337*d - sum;

end
