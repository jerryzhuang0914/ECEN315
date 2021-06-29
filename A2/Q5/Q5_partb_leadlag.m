% (b) Lead Lag
clear all
clf
for K = 0.1:0.1:10; % Integral gain
    Zc = 20; % Zc < -6
    Pc = 4; % -6 < Pc <-1
    s = tf('s');
    C = K*(s+Zc)/(s+Pc);
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
disp(['The minimum value of gain is ',num2str(K)])
stepplot(sys)
hold on
stepplot(feedback((6.4*(s+Zc)/(s+Pc))*G,1))
legend('K=6.5','K=6.4')