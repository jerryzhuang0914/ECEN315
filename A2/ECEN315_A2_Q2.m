% 2)
% (a)
clear all
clf
T = 0:0.01:5;
step = 5;
num = step*0.04;
den = [1 2.0 0];
sys = tf(num,den)
stepplot(sys,T)
grid on

%(b)
figure;
syms s t
snum = poly2sym(num,s); % Symbolic Numerator Polynomial
sden = poly2sym(den,s);  % Symbolic Denominator Polynomial
SysTimeDomain = ilaplace(snum/sden) % Inverse Laplace transform
f = matlabFunction(SysTimeDomain); % converts the symbolic expression to a MATLAB function
t = 0:0.01:7;
plot(t,f(t))
xlabel('t');
ylabel('w(t)');
title('The Response in Angular Velocity with Time');
grid on