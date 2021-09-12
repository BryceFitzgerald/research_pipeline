function scores = shekelfoxholesfcn(xx)

d = length(xx);                                          % Modified here.

if d ~= 2                                                % Modified here.
   error('***Shekel Foxholes Function is only 2-D!***'); % Modified here.
end                                                      % Modified here.

a=[-32 -16 0 16 32 -32 -16 0 16 32 -32 -16 0 16 32 -32 -16 0 16 32 -32 -16 0 16 32;
   -32 -32 -32 -32 -32 -16 -16 -16 -16 -16 0 0 0 0 0 16 16 16 16 16 32 32 32 32 32];

x1 = xx(1);
x2 = xx(2);

F = 0;
for k = 1 : 25
    F = F + 1 / (k + (x1 - a(1, k))^6 + (x2 - a(2, k))^6);
end

f = ((1/500) + F) ^ (-1) - 0.998003837794449325873406851315; % Modified here.

scores = f;