function scores = exponentialfcn(x)

% global SimulatedOptimalSolution;  % Modified here.
% x = x - SimulatedOptimalSolution; % Modified here.

   x2 = x .^2;
   
   scores = -exp(-0.5 * sum(x2, 2)) + 1; % Modified here.
end