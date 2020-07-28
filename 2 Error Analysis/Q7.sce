//Documentation by Keivalya Pandya
//sum1 -> Sum of series 1
//et1 -> True Error in series 1
//ea1 -> Approx. Error in series 1
//
//sum2 -> Sum of series 2
//et2 -> True Error in series 2
//ea2 -> Approx. Error in series 2

function [sum1,et1,ea1,sum2,et2,ea2]=mine2(x,trueval)
    term1=1;term2=1;sum1o=term1;sum2o=term2;
    for i=2: 20
        sum1=sum1o+(-1)^(i-1)*x^(i-1)/factorial(i-1);
        term2=term2+x^(i-1)/factorial(i-1);
        sum2=1/term2;
        et1=abs((trueval-sum1)/sum1);
        et2=abs((trueval-sum2)/sum2);
        ea1=abs((sum1-sum1o)/sum1);
        ea2=abs((sum2-sum2o)/sum2);
        sum1o=sum1;sum2o=sum2;
    end
end

[sum1,et1,ea1,sum2,et2,ea2] = mine2(5,6.737947*10^-3)
