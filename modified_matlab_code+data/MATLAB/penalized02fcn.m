function [y] = penalized2fcn(xx)

% global SimulatedOptimalSolution;        % Modified here.
% 
% xx = xx + 1 - SimulatedOptimalSolution; % Modified here.

d = length(xx);
sum1 = 0;
sum2 = 0;
a = 5;
k = 100;
m = 4;

for i = 1 : (d - 1)
    sum1 = sum1 + (xx(i) - 1)^2 * (1 + (sin(3 * pi * xx(i + 1)))^2);
end

for i = 1 : d
    
    if xx(i) > a
       u = k * (xx(i) - a)^m;
    elseif xx(i) < (-a)
       u = k * (-xx(i) - a)^m;
    else
        u = 0;
    end
    
    sum2 = sum2 + u;
end

y = 0.1 * ((sin(3 * pi * xx(1)))^2 + sum1 + (xx(d) - 1)^2 * (1 + (sin(2 * pi * xx(d)))^2)) + sum2;
end