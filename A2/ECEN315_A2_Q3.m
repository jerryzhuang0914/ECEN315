% 3)
% x1/f
clear all
clf
num = [0 0 5 0.2 8];
den = [10 0.9 41.02 1.8 15];
sys = tf(num,den)
stepplot(sys)
grid on