function [y] = weierstrassfcn(xx)

d = length(xx);

a = 0.5;
b = 3;
kmax = 20;

sum1 = 0;
for i = 1 : d
    for j = 0 : kmax
        sum1 = sum1 + a^j * cos(2 * pi * b^j * (xx(i) + 0.5));
    end
end

sum2 = 0;
for i = 0 : kmax
    sum2 = sum2 + a^i * cos(pi * b^i);
end
sum2 = sum2 * d;

y = sum1 - sum2;

