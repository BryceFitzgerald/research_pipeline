function [y] = damavandifcn(xx)

% Damavandi's Function
% Range of initial points: 0 <= xj <= 14 , j=1,2
% Global minima: (x1,x2)=(2,2)
% f(x1,x2)=0
% Coded by: Ali R. Alroomi | Last Update: 12 May 2015 | www.al-roomi.org

% clear
% clc
% warning off
%     
% x1min=0;
% x1max=14;
% x2min=0;
% x2max=14;
% R=1500; % steps resolution
% x1=x1min:(x1max-x1min)/R:x1max;
% x2=x2min:(x2max-x2min)/R:x2max;

n = size(xx, 2);
assert(n == 2, 'Damavandi function is defined only on a 2D space.');

x1 = xx(1);
x2 = xx(2);

y=(1-(abs((sin(pi*(x1-2))*sin(pi*(x2-2)))/(pi*pi*(x1-2)*(x2-2))))^5)*(2+(x1-7)^2+2*(x2-7)^2);
end