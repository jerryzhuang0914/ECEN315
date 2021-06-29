
%% 
% (a) Finding Minimum Value which cause system become unstable
clear all
clf
for C = 0.1:0.1:10 % Gain Controller
    Gnum = 6;
    Gden = [1 7 6 0];
    G = tf(Gnum,Gden); % Plant
    sys = feedback(C*G,1);
    B = isstable(sys); % Chenck if the system is stable
    if B==0 % B=0 means system is unstable
        break
    end
end
disp(['The minimum vaule of gain is ',num2str(C)])
sys
step(sys) % When gain = 7
hold on
step(feedback(6.9*G,1)) % When gain = 6.9
hold off
legend('C=7','C=6.9')