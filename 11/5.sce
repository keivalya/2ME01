deff('x=f(y,t)','x=y*((sin(t))^3)')
// Euler Modified
y=1;
y1=1;
printf('x.     y')
for i=0:0.1:3
    printf('\n %4.4f.    %4.4f',i,y1)
    n = 10*i + 1
    abc(n) = y1
    t=y1;
    y=y+(0.1*f(i,y));
    y1=y1+((0.1/2)*(f(i+0.05,y+0.01*f(i+0.1,y))));
    y=y1;
end

// Runge Kutta
y=1
printf('\n\nx.    y')
for i=0:0.1:3
    printf('\n %4.4f.      %4.4f',i,y)
    xyz(n) = y
    k1=0.1*f(i,y);
    k2=0.1*f(i+(0.1/2),y+(k1/2));
    k3=0.1*f(i+(0.1/2),y+(k2/2));
    k4=0.1*f(i+0.1,y+k3);
    k=(1/6)*(k1+(2*k2)+(2*k3)+k4);
    y=y+k;
end

xdata = linspace(0, 3 , length(abc));
ydata = abc
plot ( xdata , ydata , "+-" )
ydata2 = xyz
plot ( xdata , ydata2 , "o-" )
