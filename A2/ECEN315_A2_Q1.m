%% Plot the responses when a=1,3,9,18.
clear all;
clf;
hold on;
for a = [1 3 9 18]
    num = [a];
    den = [1 9 a];
    sys = tf(num,den)
    stepplot(sys);
end
grid on;
hold off;
legend('a=1','a=3','a=9','a=18');
%% Plot the poles for each case
clear all;
clf;

% When a=1
a1 = 1;
num = [a1];
den = [1 9 a1];
sys = tf(num,den);
stepResults = stepinfo(sys);
% Print out settling time
settlingTime = stepResults.SettlingTime;
X = ['When a=1, settling time = ',num2str(settlingTime)];
disp(X);
% Print out time constant
damp(sys);
disp(' ');
% Plot poles
pzmap(sys);
legend('a=1');
grid on;

% When a=3
figure;
a2 = 3;
num = [a2];
den = [1 9 a2];
sys = tf(num,den);
stepResults = stepinfo(sys);
% Print out settling time
settlingTime = stepResults.SettlingTime;
X = ['When a=3, settling time = ',num2str(settlingTime)];
disp(X);
% Print out time constant
damp(sys);
disp(' ');
% Plot poles
pzmap(sys);
legend('a=3');
grid on;

% When a=9
figure;
a3 = 9;
num = [a3];
den = [1 9 a3];
sys = tf(num,den);
stepResults = stepinfo(sys);
% Print out settling time
settlingTime = stepResults.SettlingTime;
X = ['When a=9, settling time = ',num2str(settlingTime)];
disp(X);
% Print out time constant
damp(sys);
disp(' ');
% Plot poles
pzmap(sys);
legend('a=9');
grid on;

% When a=18
figure;
a4 = 18;
num = [a4];
den = [1 9 a4];
sys = tf(num,den);
stepResults = stepinfo(sys);
% Print out settling time
settlingTime = stepResults.SettlingTime;
X = ['When a=18, settling time = ',num2str(settlingTime)];
disp(X);
% Print out time constant
damp(sys);
disp(' ');
% Plot poles
pzmap(sys);
legend('a=18');
grid on;