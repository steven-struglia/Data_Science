function triple_integral(alpha,beta,h1,h2)
% regionpol(alpha,beta,h1,h2)
%
% for polar coordinates r,theta:
% plot region given by
%   alpha <= theta <= beta
%   h1 <= r <= h2
% where h1,h2 are symbolic expressions of theta
% 
% Example: circle of radius 1 with center (1,0), only part with x>=1
%   syms theta
%   regionpol(-pi/4,pi/4,1/cos(theta),2*cos(theta))
%   axis equal

syms theta
alpha = double(alpha); beta = double(beta);
h1 = sym(h1); h2 = sym(h2);

hs = ishold;
ezplot(h1*cos(theta),h1*sin(theta),[alpha,beta]); hold on  % inner boundary of R
ezplot(h2*cos(theta),h2*sin(theta),[alpha,beta]); hold on  % outer boundary of R
thetav = linspace(alpha,beta,33);   % vector of 33 x-values from alpha to beta
h1v = subs(h1,theta,thetav);        % corresponding h1-values
h2v = subs(h2,theta,thetav);        % corresponding h2-values
% draw radial lines in red:
plot([h1v.*cos(thetav);h2v.*cos(thetav)],[h1v.*sin(thetav);h2v.*sin(thetav)],'r');  
title('')                                    

if hs==0
  hold off
end
