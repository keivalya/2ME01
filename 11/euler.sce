deff('z=func(x,y)','z=y*(x^2) - 1.1*y')

function euler(x0, y, h, x)
    temp = -0;
    while x0<x
        temp = y;
        printf('\tx = %f \t y = %f\n', x0, y)
        y = y + (h * func(x0,y));
        x0 = x0 + h;
    end
    printf('Approximate solution at x = %.3f is %f',x,y);
endfunction

x0 = 0;
y0 = 1;
h = 0.25;

x = 1;

euler(x0, y0, h, x);
funcprot(0);
