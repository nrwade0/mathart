%{
  The lissajous curve is the graph of the system of parametric equations:
    x = A*sin(a*t + delta)
    y = B*sin(b*t),
  which describe complex harmonic motion.
https://en.wikipedia.org/wiki/Lissajous_curve
%}

cd /Users/nick/Documents/GitHub/mathart/display

t = linspace(0,100,10000);
x = x_function(t);
y = y_function(t);

p = plot(x,y);
p.

saveas(gcf,'lissajous.png')

function x = x_function(t)
    A = 1;
    a = 5;
    delta = pi/4;
    x = A*sin(a*t + delta);
end

function y = y_function(t)
    B = 1;
    b = 4;
    y = B*sin(b*t);
end
