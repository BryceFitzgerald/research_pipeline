function y = ackley(xx,a,b,c)

% xx = xx - pi; % Modified here.

% global SimulatedOptimalSolution; % rng(5) % Modified here.

d = length(xx);

% % for Dimension = 1 : d                            % Modified here.
% %     xx(Dimension) = xx(Dimension)  - SimulatedOptimalSolution(Dimension); %(mod(Dimension - 1, 3) + 1); %  (-(1 + 0.2 * Dimension)); - 0; %% Modified here.
% end                                              % Modified here.

if (nargin < 4)
    c = 2*pi;
end
if (nargin < 3)
    b = 0.2;
end
if (nargin < 2)
    a = 20;
end

sum1 = 0;
sum2 = 0;
for ii = 1:d
	xi = xx(ii);
	sum1 = sum1 + xi^2;
	sum2 = sum2 + cos(c*xi);
end

term1 = -a * exp(-b*sqrt(sum1/d));
term2 = -exp(sum2/d);

y = term1 + term2 + a + exp(1);

end