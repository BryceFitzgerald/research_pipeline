function [y] = easom(xx)

% xx = xx + [pi pi]; % Modified here.

x1 = xx(1);
x2 = xx(2);

fact1 = -cos(x1)*cos(x2);
fact2 = exp(-(x1-pi)^2-(x2-pi)^2);

y = fact1*fact2 + 1; % Modified here.

end
