//deff('z=f(x,y)','z=y*(x^2) - 1.1*y')
deff('z=f(x,y)','z=(1+4*x)*sqrt(y)')

x0=0//input('\n Enter initial value of x i.e. x0: '); //example x0=0
y0=1//input('\n Enter initial value of y i.e. y0: '); //example y0=0.5
xn=1//input('\n Enter the final value of x: ');// where we need to find the value of y 
                                            //example x=2
h=0.25//input('\n Enter the step length h: '); //example h=0.2
 //Formula: y1=y0+h/2*[f(x0,y0)+f(x1,y1*)] where y1*=y0+h*f(x0,y0);
printf('\n x        y '); 
while x0<=xn
    printf('\n%4.2f   %4f ',x0,y0);//values of x and y
    k=y0+h*f(x0,y0);
    x1=x0+h;
    y1=y0+h/2*(f(x0,y0)+f(x1,k));
    x0=x1;
    y0=y1;
end
