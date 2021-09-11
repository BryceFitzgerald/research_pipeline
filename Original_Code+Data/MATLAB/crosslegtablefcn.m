function scores = crosslegtablefcn(xx)

x1 = xx(1);
x2 = xx(2);

f = -1 / ((abs(exp(abs(100 - (sqrt(x1^2 + x2^2) / pi))) * sin(x1) * sin(x2)) + 1)^0.1);

f = f + 1; % Modified here.

scores = f;

end