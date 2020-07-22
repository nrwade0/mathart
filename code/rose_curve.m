%{
    Rose Curve
%}

cd /Users/nick/Documents/GitHub/mathart/code


theta = linspace(0,2*pi,1000);
A = 1;

n = 1:7;
d = 1:7;

titles = ["1" "2" "3" "4" "5" "6" "7"];
titles2 = ["1" "2" "3" "4" "5" "6" "7"];

tiledlayout(length(d), length(n), 'TileSpacing', 'Compact')
title("k = n/d")

for i = 1:length(n) %rows
    for j = 1:length(d) %columns
        
        k = n(i)/d(j);
        
        temp_title = strcat("k = ", titles(i), "/", titles2(j));
        
        theta = 0:0.01:2*pi;
        rho = sin(k*theta).*cos(k*theta);
        
        nexttile
        polarplot(theta,rho)
        title(temp_title)
        set(gca,'RTickLabel',[])
        %rlim([0 1.2*A])
        set(gca,'ThetaTickLabel',[])
        %thetalim([0 2*A])
        
    end
end

set(gcf, 'Position',  [100, 100, 1200, 800])
saveas(gcf,'../display/rose_curve.png')




% inputs:
%   del_theta = del_theta is the discrete step size for discretizing the continuous range of angles from 0 to 2*pi
%   k = petal coefficient
%      if k is odd then k is the number of petals
%      if k is even then k is half the number of petals
%   amplitude = length of each petal
% outputs:
%   a 2D plot from calling this function illustrates an example of trigonometry and 2D Cartesian plotting

%{

where k is a positive integer, has area


{\frac  {1}{2}}\int _{{0}}^{{2\pi }}(a\cos(k\theta ))^{2}\,d\theta ={\frac  {a^{2}}{2}}\left(\pi +{\frac  {\sin(4k\pi )}{4k}}\right)={\frac  {\pi a^{2}}{2}}
if k is even, and

{\frac  {1}{2}}\int _{{0}}^{{\pi }}(a\cos(k\theta ))^{2}\,d\theta ={\frac  {a^{2}}{2}}\left({\frac  {\pi }{2}}+{\frac  {\sin(2k\pi )}{4k}}\right)={\frac  {\pi a^{2}}{4}}
if k is odd.
%}