% Solving the homework one 
clc; clear all;

f = [1 1 3 3 5 5];
b = [2 -2 4 -4];
a = [1 -1 3 -3 5 -5];

p = -b;
disp('Poles are the following');
disp(p); 

z = -a;
disp('Zeros are the following');
disp(z);

[x,y] = RR_Diophantine(a,b,f)

%% Second part of Question one

f1 = [1 1 3 3 5 5 50];
b1 = [2 -2 4 -4];
a1 = [1 -1 3 -3 5 -5];

p1 = -b1;
disp('Poles are the following');
disp(p1); 

z1 = -a1;
disp('Zeros are the following');
disp(z1);

[x1,y1] = RR_Diophantine(a1,b1,f1)

%% Question 3 

d = 0.1;
k = 0; 
d = 0.1;

for n = 1:4

ck = ( factorial(2*n-k) * factorial(n) )  / ( factorial(2*n) * factorial(k) * factorial(n-k) )

for s = 1:5

%  Fn = ( (-1)^k * ck * (d*s)^k ) / ( ck * (d*s) ^ k )


plot(Fn,s)
hold on

Fn = 0

end

k = n; 

end

%% Question 4 

rlocus(tf([1],[1 0]));