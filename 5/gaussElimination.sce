/* Gauss Elimination Method
by Keivalya Pandya in SciLab

Verified. Edit C and b matrices as per requirements.
ans for this is: 3, -1, -2
end
*/

function elimination(C, x, b)
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
    for i = 1:n
        printf("\n \t Result: variable %d is \t %f", i, x(i))
    end
endfunction

// Q1
printf("\n Question 1: . 2x+y−3z=11; 4x−2y+3z=8; −2x+ 2y−z=−6", "s")
C = [2, 1, -3;
    4, -2, 3;
    -2, 2, -1];             // Defining coefficient of variables into matrix
x = zeros(size(C, "r"));    // Gives number of variables
b = [11, 8, -6];            // RHS of given equations, in vector form

elimination(C, x, b);
funcprot(0);

// Q2
printf("\n\n Question 2: . 6x+3y+6z=17; 2x+3y+3z=17; x+2y+2z=11", "s")
C = [6, 3, 6;
    2, 3, 3;
    1, 2, 2];             // Defining coefficient of variables into matrix
x = zeros(size(C, "r"));    // Gives number of variables
b = [17, 17, 11];            // RHS of given equations, in vector form

elimination(C, x, b);
funcprot(0);

// Q3   SEEMS INCORRECT. Please check
printf("\n\n Question 3: . 2x+y+z=4; 3y-3y=0; −y+2y=1", "s")
C = [2, 1, 1;
    0, 0, 0;
    0, 1, 0];             // Defining coefficient of variables into matrix
x = zeros(size(C, "r"));    // Gives number of variables
b = [4, 0, 1];            // RHS of given equations, in vector form

elimination(C, x, b);
funcprot(0);

// Q4
printf("\n\n Question 4: . a+2b+3c+4d=8; 2a-2b-c-d=-3; a-3b+4c-4d=8; 2a+2b-3c+4d=-2", "s")
C = [1, 2, 3, 4;
    2, -2, -1, -1;
    1, -3, 4, -4;
    2, 2, -3, 4];             // Defining coefficient of variables into matrix
x = zeros(size(C, "r"));    // Gives number of variables
b = [8, -3, 8, -2];            // RHS of given equations, in vector form

elimination(C, x, b);
funcprot(0);

// Q5
printf("\n\n Question 5: . EQUATIONS", "s")
C = [2,1,1,-1;
    1,5,-5,6;
    -7,+3,-7,-5;
    1,-5,2,7];             // Defining coefficient of variables into matrix
x = zeros(size(C, "r"));    // Gives number of variables
b = [10,25,5,11];            // RHS of given equations, in vector form

elimination(C, x, b);
funcprot(0);

// Q6
printf("\n\n Question 6: . EQUATIONS", "s")
C = [1,1,1,1;
    2,-1,3,0;
    0,2,0,3;
    -1,0,2,1];             // Defining coefficient of variables into matrix
x = zeros(size(C, "r"));    // Gives number of variables
b = [3,3,1,0];            // RHS of given equations, in vector form

elimination(C, x, b);
funcprot(0);
