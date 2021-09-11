function [y] = price03fcn(xx)

% % Price's Function # 3 (Modified Rosenbrock's or Price-Rosenbrock's Function)
% % Range of initial points: -5 <= xj <= 5 , j=1,2 
% % Some references consider: -50 <= xj <= 50 or -500 <= xj <= 500
% % Two global minimum: (x1,x2)={(0.341307503353524,0.116490811845416),(1,1)}
% % f(x1,x2)=0
% % Coded by: Ali R. Alroomi | Last Update: 14 June 2015 | www.al-roomi.org
% 
% % It is based on the Rosenbrock's Function
% 
% clear
% clc
% warning off
% 
% x1min=-5;
% x1max=5;
% x2min=-5;
% x2max=5;
% R=1500; % steps resolution
% x1=x1min:(x1max-x1min)/R:x1max;
% x2=x2min:(x2max-x2min)/R:x2max;

d = length(xx);
assert(d == 2, 'Price 02 function is only defined on a 2D space.');

x1 = xx(1);
x2 = xx(2);

y=100*(x2-x1.^2).^2+(6.4*(x2-0.5).^2-x1-0.6).^2;
end
