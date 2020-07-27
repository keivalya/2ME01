s=0;
for i=1:10000
    s=s+1/i^4;
end

pi = %pi
print('%.20f',s)
//% output: 1.08232323371086103236
disp(((pi^4)/90 -s)/((pi^4)/90));
//% 2.5603e-013

s=0;
for i=10000:-1:1
    s=s+1/i^4;
end

print('%.20f',s)
//% 1.08232323371080485508
disp(((pi^4)/90 -s)/((pi^4)/90));
//% 3.0794e-013

//%repeat the same code, changing the length of the sum to 100000

s=0;
for i=1:100000
    s=s+1/i^4;
end

print('%.20f',s)
//% 1.08232323371086103236
disp(((pi^4)/90 -s)/((pi^4)/90));
//% 2.5603e-013

s=0;
for i=100000:-1:1
    s=s+1/i^4;
end

print('%.20f',s)
//% 1.08232323371113792199
disp(((pi^4)/90 -s)/((pi^4)/90));
//% 2.0516e-016
