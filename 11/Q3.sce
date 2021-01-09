clc
deff('x=f(x,y)','x=(x-y)/2')
y0 = 1
x = 0
y = 0
printf('  x \t\t  y','s')
//Euler
for i = 0:0.1:4
    v0 = y
    v = v0 + (0.1*f(i,y0))
    printf("\n %4.4f \t %4.4f", i, y0)
    y0 = y0+(0.1*y)
    y = v
    n = 10*i +1
    xyz(n)=y0
end

//modified euler
y0 = 1
x = 0
y = 0
printf('\n\n  x \t\t  y','s')
for i=0:0.1:4
    v = v0 + (0.1*f(i,y0)) 
    printf("\n %4.4f \t %4.4f", i, y0)
    t = y0
    y0 = y0+(0.1*v0)
    y1 = t + ((0.1/2)*(v0+v))
    v0 = v0+((0.1/2)*(f(i,t)+f(i+0.1,y1)))
    y0 = y1
    n = 10*i +1
    abc(n)=y0
end

xdata = 0:0.1:4
ydata1 = abc
plot(xdata, ydata1, "+-")
ydata2 = xyz
plot(xdata, ydata2, "o-")
