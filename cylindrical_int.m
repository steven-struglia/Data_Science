function cylindrical_int(f,alpha,beta,h1,h2)
% ezsurfpol(f,alpha,beta,h1,h2)
%
% for polar coordinates r,theta:
% plot graph of f over region
%   alpha <= theta <= beta
%   h1 <= r <= h2
% where f is symbolic expression of r,theta
% h1,h2 are symbolic expressions of theta
% 
% Example: plane z=x over circle of radius 1 with center (1,0)
%   syms r theta
%   f = r*cos(theta)
%   h1 = 0
%   h2 = 2*cos(theta)
%   ezsurfpol(f,-pi/2,pi/2,h1,h2)
%   nice3d

f = sym(f); h1 = sym(h1); h2 = sym(h2);
alpha = double(alpha); beta = double(beta);
syms r theta

syms RT THT 
RR = (1-RT)*h1+RT*h2;
FT = subs(f,r,RR);
ezsurf(subs(RR*cos(theta),theta,THT),subs(RR*sin(theta),theta,THT),subs(FT,theta,THT)+0*RT+0*THT,[0,1,alpha,beta])
p = findobj(gca,'type','surface'); p = p(1);
set(p,'MeshStyle','row','FaceColor','interp');
title('')