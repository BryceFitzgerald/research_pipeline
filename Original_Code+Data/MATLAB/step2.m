function scores = step2(xx)

% d = length(xx);    % Modified here.
% xx = xx - (1 : d); % Modified here.

f = sum((floor(abs(xx + 0.5))) .^ 2);

scores = f;