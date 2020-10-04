deff('y=f(x)','y= x^3 - 4*x - 9')
deff('y=z(x)','y= 3*x*x - 4')
function h = newtonRaps(x)
    h = f(x) / z(x)
    while abs(h) >= 0.0001
        h = f(x)/z(x)
        x = x - h  
    end
    disp(x)
endfunction

x0 = 3
disp(newtonRaps(x0))
