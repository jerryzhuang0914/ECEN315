clear all
clf
Ra = 13.58;
La = 0.286;
Kb =0.010866;
Kt = 0.010866;
Dm = 2.685e-5;
Jm = 1.4499e-6;
% Top
top = Kt/(Jm*La);
% Bottom Left
BL = (Jm*Ra+Dm*La)/(Jm*La);
% Bottom right
BR = (Ra*Dm+Kt*Kb)/(Jm*La);

% The step response of 1,2,3,4,5,6V input.
hold on;
for i = 1:6
    num=[i*top];
    den=[1 BL BR];
    sys=tf(num,den)
    stepResults = stepinfo(sys);
    % Print out settling time
    settlingTime = stepResults.SettlingTime;
    disp(['When input = ', num2str(i), 'V', ', settling time = ', num2str(settlingTime)])
    % Print out time constant
    damp(sys);
    stepplot(sys);
end

grid on
hold off
legend('1V','2V','3V','4V','5V','6V')

%% Steady state gain

clear all
Ra = 13.58;
La = 0.286;
Kb =0.010866;
Kt = 0.010866;
Dm = 2.685e-5;
Jm = 1.4499e-6;
% Top
top = Kt/(Jm*La);
% Bottom Left
BL = (Jm*Ra+Dm*La)/(Jm*La);
% Bottom right
BR = (Ra*Dm+Kt*Kb)/(Jm*La);

% The step response of 1,2,3,4,5,6V input.
for i = 1:6
    s = tf('s');
    % substituting s=0 into a transfer function
    s = 0;
    sys = (i*top)/(s^2 + BL*s + BR);
    disp(['When input = ', num2str(i), 'V, ', 'steady state gain is ', num2str(sys)])
end
