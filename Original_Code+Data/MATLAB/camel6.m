function [y] = camel6(xx)

d = length(xx);                                         % Modified here.

if d ~= 2                                               % Modified here.
   error('***Six-hump camel function is only 2-D!***'); % Modified here.
end                                                     % Modified here.

x1 = xx(1);
x2 = xx(2);

term1 = (4-2.1*x1^2+(x1^4)/3) * x1^2;
term2 = x1*x2;
term3 = (-4+4*x2^2) * x2^2;

y = term1 + term2 + term3 + 1.031628453489877; % Modified here.

end