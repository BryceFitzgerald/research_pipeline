function [y] = michalewicz(xx, m)

if (nargin == 1)
    m = 10;
end

d = length(xx);
sum = 0;

switch (d)                                                % Modified here.
    case 1                                                % Modified here.
         ObjectiveFunctionValue = -0.8013034101;          % Modified here.
                                                          % Modified here.
    case 2                                                % Modified here.
         ObjectiveFunctionValue = -1.8013034101;          % Modified here.
                                                          % Modified here.
    case 3                                                % Modified here.
         ObjectiveFunctionValue = -2.7603946800;          % Modified here.
                                                          % Modified here.
    case 4                                                % Modified here.
         ObjectiveFunctionValue = -3.6988570985;          % Modified here.
                                                          % Modified here.
    case 5                                                % Modified here.
         ObjectiveFunctionValue = -4.6876581791;          % Modified here.
                                                          % Modified here.
    case 10                                               % Modified here.
         ObjectiveFunctionValue = -9.660151715641344;     % Modified here.
                                                          % Modified here.
    case 30                                               % Modified here.
         ObjectiveFunctionValue = -29.630883850324413;    % Modified here.
                                                          % Modified here.
    case 50                                               % Modified here.
         ObjectiveFunctionValue = -49.624832318283161;    % Modified here.
                                                          % Modified here.
    case 100                                              % Modified here.
         ObjectiveFunctionValue = -99.620194016592961;    % Modified here.
                                                          % Modified here.
    case 500                                              % Modified here.
         ObjectiveFunctionValue = -4.996165655437981e+02; % Modified here.
                                                          % Modified here.
    case 1000                                             % Modified here.
         ObjectiveFunctionValue = -9.996161052093422e+02; % Modified here.
end                                                       % Modified here.

for ii = 1:d
	xi = xx(ii);
	new = sin(xi) * (sin(ii*xi^2/pi))^(2*m);
	sum  = sum + new;
end

y = -sum - ObjectiveFunctionValue; % Modified here.

end