function [y] = griewank(xx)

d = length(xx);

xx = xx + 0;%(- (ones(1, d) ./ (1:d))); % ones(1, d) * 300; % Modified here.

sum = 0;
prod = 1;

for ii = 1:d
	xi = xx(ii);
	sum = sum + xi^2/4000;
	prod = prod * cos(xi/sqrt(ii));
end

y = sum - prod + 1;

end
