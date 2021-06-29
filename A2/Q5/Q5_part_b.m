% (b) PI
clear all
clf
for Ki = 0.1:0.1:20; % Integral gain
    Kp = 1; % Proportional gain
    s = tf('s');
%     C = (s+K)/(s+K');
    C = Kp + Ki/s;
    Gnum = 6;
    Gden = [1 7 6];
    G = tf(Gnum,Gden);
    sys = feedback(C*G,1);
    B = isstable(sys);
    if B==0
        break
    end
end
sys
disp(['The minimum value of integral gain is ',num2str(Ki)])
step(sys)
%step(sys,feedback((1+13.9/s)*G,1))
legend('Kp=1, Ki=14','Kp=1, Ki=13.9')
