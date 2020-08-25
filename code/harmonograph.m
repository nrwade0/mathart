%{
  A harmonograph is a mechanical apparatus that employs pendulums to create
    a geometric image. The drawings created typically are Lissajous curves
    or related drawings of greater complexity. Equations include:
    
    x(t) = A1 * sin(t*f1 + p1)*e^(-d1*t) + A2 * sin(t*f2 + p2)*e^(-d2*t)
    y(t) = A3 * sin(t*f3 + p3)*e^(-d3*t) + A4 * sin(t*f4 + p4)*e^(-d4*t)

  where f = frequency, p = phase, A = amplitude, d = damping and t = time.
    
  https://en.wikipedia.org/wiki/Harmonograph
%}
clc
cd /Users/nick/Documents/GitHub/mathart/code


fprintf('Declaring variables...')
t = linspace(0, 10000, 1e7);
A = [1 1 1 1]; % amplitude = how deep the line goes into quadrant
f = [30 20 10 20]; %
p = [0 0 0 0]; % phase = changes what quadrant starts out at
d = [1 1 1 1]; % damping
fprintf(' Done\n')


fprintf('Calculating data points...')
%temp_title = strcat(titles2(i), " ", titles(j));
x = A(1).*sin(t.*f(1)+p(1)).*exp(-d(1).*t) + A(2).*sin(t.*f(2)+p(2)).*exp(-d(2).*t);
y = A(3).*sin(t.*f(3)+p(3)).*exp(-d(3).*t) + A(4).*sin(t.*f(4)+p(4)).*exp(-d(4).*t);
fprintf(' Done\n')


fprintf('Plotting and saving...')
plot(x,y)
title("Harmonograph")
set(gca,'xticklabel',[])
set(gca,'yticklabel',[])
saveas(gcf,'../display/harmonograph.png')
fprintf(' Done\n')

