function [y] = sumpow(xx)

% xx = xx - 0.01; % Modified here.

d = length(xx);
sum = 0;

for ii = 1:d
    xi = xx(ii);
    new = (abs(xi))^(ii+1);
    sum = sum + new;
end

y = sum;

end
