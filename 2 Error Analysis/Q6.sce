s = 1.0
term = 1.0
fact = 1.0
x = 0.3*%pi

for i = 2:2:50
    fact = fact*i*(i-1);
    term = (-1)*term*x*x/fact;
    s = s + term;
    ea = term/s;
    disp(s, ea);
    if ea<0 then ea = -ea, end
    if ea < 0.000000005 then break, end
end
