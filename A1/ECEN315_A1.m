t=0:150;
% Vo(s) transfer function
num=[20 0];
den=[6 20.1 1];
sys=tf(num,den)
stepplot(sys,'b')
hold on
% Vo(t) when input is a unit step
F=1.02596*(exp(-0.0505129*t)-exp(-3.29949*t));
plot(t,F,'r')
legend('Vo(s)','Vo(t)')
hold off