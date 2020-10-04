
C = [6, 3, 6;
    2, 3, 3;
    1, 2, 2];
b = [17, 17, 11];

n = size(C, "r");
x = zeros(n);

function K = elimination(C, x, b)
    a = [C, b'];
    n = size(a, "r");
    for i = 1:n
        if a(i,i) == 0
            print("Division by ZERO detected!",'s');
            break;
        end
        for j = i+1:n
            ratio = a(j,i)/a(i,i);
            for k = 1:(n+1)
                a(j,k) = a(j,k) - (ratio * a(i,k));
            end
        end
    end
    
    x(n) = a(n,n+1)/a(n,n);
    
    for i = (n-1):-1:1
        x(i) = a(i,n+1);
        for j = i+1:n
            x(i) = x(i) - a(i,j)*x(j);
        end
        x(i) = x(i)/a(i,i);
    end
    K = x;
endfunction

disp(elimination(C, x, b));
