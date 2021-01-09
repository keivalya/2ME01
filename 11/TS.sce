// Define approximation polynomial
function [y] = P(x,n)
    y=zeros(1,length(x));
    for i=1:n
        y=y+(-1)^(i+1).*(x.^i)/(i);
    end
endfunction

clc()
// Initialize figure
figure(0)
clf()
ha=gca();
hf=gcf();
hf.background = color('white');
color_list=['red' 'orange' 'magenta' 'darkmagenta' 'purple' 'green' 'darkcyan' 'blue'];

// Calculate and plot approximations P(x)
x=-1:.01:1;
n=8;
for i= 1:n
    plot(x,P(x,i-1));
end
for i=1:n
    ha.children(n-i+1).children.foreground = color(color_list(i));
end

// Plot f(x)
plot(x,log(1+x),'k','LineWidth',2)
xgrid()
xlabel('x','FontSize',2)
ylabel('$\Large{P_{n}(x),\quad \ln(1+x)}$')
legend(['n=0' 'n=1' 'n=2' 'n=3' 'n=4' 'n=5' 'n=6' 'n=7' '$\Large{\ln(1+x)}$'],4)
title('x-engineer.org','FontSize',2)
