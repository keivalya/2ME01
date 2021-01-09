clc
deff('x=g(x,y,z)','x=(0.6*z)-(8*y)')
y=2;
z=0;
printf('    x.        y')
for i=0:0.5:5
    printf('\n %4.4f.   %4.4f. ',i,y)
    n = 2*i + 1
    abc(n) = n
    xyz(n) = y
    k1=0.5*(z);
    l1=0.5*(g(i,y,z));
    k2=0.5*(z+(l1/2));
    l2=0.5*(g(i+0.25,y+(k1/2),z+(l1/2)));
    k3=0.5*(z+(l2/2));
    l3=0.5*(g(i+0.25,y+(k2/2),z+(l2/2)));
    k4=0.5*(z+l3);
    l4=0.5*(g(i+0.5,y+k3,z+l3));
    k=(1/6)*(k1+(2*k2)+(2*k3)+k4);
    y=y+k;
    z=z+((1/6)*(l1+(2*l2)+(2*l3)+l4));
end

n = length(xyz)
xdata = linspace(0,5,n)
ydata = xyz
plot(xdata , ydata)
