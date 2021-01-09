/* Gauss-Seidel Method
by Keivalya Pandya on SciLab
*/

// FUNCTION for Gauss Seidel Method
function C = seidel(a, x, b)
    n = size(a, "r");
    for j = 1:n
        d = b(j);
        for i = 1:n
            if j~=i
                d = d - a(j,i)*x(i);
            end
            x(j) = d/a(j,j);
        end
    end
    C = x;
endfunction

// FUNCTION to give number of iterations. Here, 10 is enough.
function K(a, x, b)
    for i = 1:10
        x = seidel(a, x, b);    
        disp(x);
    end
endfunction

// Q8
printf("\n\t       Q8 Output\n")
x = [0,0,0,0];
a = [4, 2, 0, 0; 2, 8, 2, 0; 0, 2, 8, 2; 0, 0, 2, 4];
b = [4, 0, 0, 14];
K(a, x, b);




