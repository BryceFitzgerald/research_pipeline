function [y] = rosen(xx)

% global SimulatedOptimalSolution;

d = length(xx);

for i = 1 : d                            % Modified here.
    xx(i) = xx(i) + 0;%(1 - SimulatedOptimalSolution(i)); % (1 - (mod(i - 1, 5) + 1)); % Modified here.
end                                      % Modified here.

sum = 0;
for ii = 1:(d-1)
	xi = xx(ii);
	xnext = xx(ii+1);
	new = 100*(xnext-xi^2)^2 + (xi-1)^2;
	sum = sum + new;
end

y = sum;

end
