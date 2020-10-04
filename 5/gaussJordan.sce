/* Gauss-Jordan Method
by Keivalya Pandya on SciLab

change the value of n as number of unknowns in the equation
Change matrices C and b as per requirements
*/

function jordan(C, x, b)
    a = [C, b'];
    n = size(a, "r");
    for i = 1:n
        if a(i,i) == 0
            print("Division with zero detected!", "s");
        end
        for j = 1:n
            if i ~= j
                ratio = a(j,i)/a(i,i);
                for k = 1:n+1
                    a(j,k) = a(j,k) - ratio*a(i,k);
                end
            end
        end
    end
    for i = 1:n
        x(i) = a(i,n+1)/a(i,i);
        printf("\n \t Result: variable %d is \t %f", i, x(i));
    end
endfunction


C = [2, 1, -3;
    4, -2, 3;
    -2, 2, -1];
b = [11, 8, -6];
jordan(C, x, b);

/*
a = [C b'];
x = zeros(n);

for i = 1:n
    if a(i,i) == 0
        print("Division with zero detected!", "s");
    end
    for j = 1:n
        if i ~= j
            ratio = a(j,i)/a(i,i);
            for k = 1:n+1
                a(j,k) = a(j,k) - ratio*a(i,k);
            end
        end
    end
end

for i = 1:n
    x(i) = a(i,n+1)/a(i,i);
end

disp(x);
*/
