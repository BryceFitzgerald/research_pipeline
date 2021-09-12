function [y] = chichinadzefcn(xx)

% % Chichinadze's Function
% % Range of initial points: -30 <= xj <= 30 , j=1,2 
% % Global minima: (x1,x2)=(6.189866586965680,0.5)
% % f(x1,x2)=-42.94438701899098
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
assert(d == 2, 'Chichinadze function is only defined on a 2D space.');

x1 = xx(1);
x2 = xx(2);

y=x1.^2-12*x1+8*sin(5*pi*x1/2)+10*cos(pi*x1/2)+11-(0.2*sqrt(5)/exp(0.5*((x2-0.5).^2)));

y = y + 42.94438701899098; % Modified here.

end