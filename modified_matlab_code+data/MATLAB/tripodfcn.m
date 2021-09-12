function [y] = tripodfcn(xx)

% % Tripod Function
% % Range of initial points: -100 <= xj <= 100 , j=1,2 
% % Global minima: (x1,x2)=(0,-50)
% % f(x1,x2)=0
% % Coded by: Ali R. Alroomi | Last Update: 24 March 2015 | www.al-roomi.org
% 
% clear
% clc
% warning off
% 
% x1min=-100;
% x1max=100;
% x2min=-100;
% x2max=100;
% R=1500; % steps resolution
% x1=x1min:(x1max-x1min)/R:x1max;
% x2=x2min:(x2max-x2min)/R:x2max;

n = size(xx, 2);
assert(n == 2, 'Tripod function is defined only on a 2D space.');

x1 = xx(1);
x2 = xx(2);

if x1 >=0
   p1=1;
else
   p1=0;
end

if x2 >=0
   p2=1;
else
   p2=0;
end

y=p2*(1+p1)+abs(x1+50*p2*(1-2*p1))+abs(x2+50*(1-2*p2));
end