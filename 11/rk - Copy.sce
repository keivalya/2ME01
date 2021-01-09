//deff('z=f(x,y)','z=y*(x^2) - 1.1*y')
deff('fun=dydx(x,y)','fun=(x-y)/2')
deff('z=f(x,y)','z=(1+4*x)*sqrt(y)')

x0=0//input('\n Enter initial value of x i.e. x0: '); //example x0=0
y=1//input('\n Enter initial value of y i.e. y0: '); //example y0=0.5
x=1//input('\n Enter the final value of x: ');// where we need to find the value of y 
                                            //example x=2
h=0.25//input('\n Enter the step length h: '); //example h=0.2
 //Formula: y1=y0+h/2*[f(x0,y0)+f(x1,y1*)] where y1*=y0+h*f(x0,y0);

function YY = rungeKutta(x0, y0, x, h)
    n = int((x-x0)/h)
    y = y0
    for i = 1:n+1
        k1 = h*dydx(x0, y)
        k2 = h*dydx(x0 + 0.5 * h, y + 0.5 * k1)
        k3 = h*dydx(x0 + 0.5 * h, y + 0.5 * k2)
        //k4 = h * dydx(x0 + h, y + k3)
        y = y + (1.0 / 6.0)*(k1 + 2*k2 + 2*k3)
        x0 = x0 + h
    end
    disp(x0-h)
    disp(y)
    YY = y
endfunction

rungeKutta(x0, y, x, h)
