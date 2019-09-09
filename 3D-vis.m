function [outputArg1,outputArg2] = cone(inputArg1,inputArg2)
outputArg1 = inputArg1;
outputArg2 = inputArg2;

fic = pi/5;
u = linspace(0,8);
q = linspace(0,2*pi);
[U,Q] = meshgrid(u,q);
X = 3*cot(fic)-(U.*cos(Q))*cos(fic);
Y = (U.*sin(Q))*cos(fic);
Z = U*sin(fic);
surf(X,Y,Z)
end

function [outputArg1,outputArg2] = sinusoidalCyl(inputArg1,inputArg2)
%SINUSOIDALCYL Summary of this function goes here
%   Detailed explanation goes here
outputArg1 = inputArg1;
outputArg2 = inputArg2;

syms u v real; sincylinder = [u, sin(u), v];
fsurf(sincylinder(1), sincylinder(2), sincylinder(3), ...
[-2*pi 2*pi -1 1])
view([1,1,1]); title(""); xlabel(""); ylabel(""); zlabel("");
grid off; axis equal; axis off;
end

function [outputArg1,outputArg2] = toroid(inputArg1,inputArg2)
outputArg1 = inputArg1;
outputArg2 = inputArg2;

clc
close all
clear all
R=5;
r=1;
u=linspace(0,2*pi,100);
v=linspace(0,2*pi,100);
[u,v]=meshgrid(u,v);
x=(R+r.*cos(v))*cos(u);
y=(R+r.*cos(v))*sin(u);
z=r.*sin(v);
figure(1)
mesh(x,y,z);
view([-52,64])
axis([-700 700 -700 700 -1 1])
h=gca; 
get(h,'FontSize') 
set(h,'FontSize',14)
xlabel('X','fontSize',14);
ylabel('Y','fontSize',14);
zlabel('Z','fontsize',14);
title('Torus','fontsize',14)
fh = figure(1);
set(fh, 'color', 'white'); 
end

