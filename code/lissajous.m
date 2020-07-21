%{
  The lissajous curve is the graph of the system of sinusoidal parametric
    equations:
    x = A*sin(a*t + delta)
    y = B*sin(b*t),
  which describe complex harmonic motion.
https://en.wikipedia.org/wiki/Lissajous_curve
%}

cd /Users/nick/Documents/GitHub/mathart/code

t = linspace(0, 100, 10000);
a = [3 2 1 1 2];
b = [2 1 1 2 3];
delta = [0 pi/2 pi 3*pi/2 2*pi];
titles = ["0" "pi/2" "pi" "3pi/2" "2pi"];
titles2 = ["3:2" "2:1" "1:1" "1:2" "2:3"];


tiledlayout(5, 5, 'TileSpacing', 'Compact')

for i = 1:length(a) %rows
    for j = 1:length(delta) %columns
        
        temp_title = strcat(titles2(i), " ", titles(j));
        x = sin(a(i)*t + delta(j));
        y = sin(b(i)*t);
        
        nexttile
        plot(x,y)
        %title(temp_title)
        set(gca,'xticklabel',[])
        set(gca,'yticklabel',[])
        if(j == 1) % write ratio to left of first column
            ylh = ylabel(titles2(i),'fontweight','normal','fontsize',12);
            set(ylh,'Rotation',0, 'VerticalAlignment','middle', 'HorizontalAlignment','right')
        end
        if(i == 1) % write delta above the first row
            title(titles(j),'fontweight','normal','fontsize',12);
        end
    end
end

saveas(gcf,'../display/lissajous.png')

