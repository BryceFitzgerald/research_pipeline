function [y] = zerosumfcn(xx)

sum1 = sum(xx);

if sum1 == 0
   y = 0;
else
   sum1 = abs(sum1);
   y = 1 + sqrt(10000 * sum1);
end