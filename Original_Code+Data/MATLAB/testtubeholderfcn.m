function [y] = testtubeholderfcn(xx)

% % Test-Tube Holder Function
% % Range of initial points: -10 <= xj <= 10 , j=1,2 
% % Global minima: (x1,x2)=(-pi/2,0)
% % f(x1,x2)=-10.872299901558
% % Coded by: Ali R. Alroomi | Last Update: 24 March 2015 | www.al-roomi.org
% 
% clear
% clc
% warning off
% 
% x1min=-10;
% x1max=10;
% x2min=-10;
% x2max=10;
% R=1500; % steps resolution
% x1=x1min:(x1max-x1min)/R:x1max;
% x2=x2min:(x2max-x2min)/R:x2max;

d = length(xx);
assert(d == 2, 'Test tube holder function is only defined on a 2D space.');

x1 = xx(1);
x2 = xx(2);

y=-4*abs(exp(abs(cos((x1.^2+x2.^2)/200)))*sin(x1)*cos(x2));

y = y + 10.872299901558; % Modified here.
end
