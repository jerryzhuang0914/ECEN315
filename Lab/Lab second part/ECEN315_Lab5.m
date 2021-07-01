clear all;
sys = tf(22.913,[0.206 13.6244 241.9 48.27 268.302]) %open loop TF
% sys = tf(111.214, [1 66.1165 1174.27 243.32 1191.21]) % close loop

% pzmap(sys)
% figure;
% rlocus(sys)

closedSys = feedback(1*sys,1) %gain is the multiplyer of sys
pzmap(closedSys)
figure;
rlocus(closedSys)
for i=0.1:0.1:100
   gain = i
   closedSys = feedback(gain*sys,1);
   x = isstable(closedSys);
   if x==0 %its unstable
       break
   end   
end
gain  % the gain that makes the system unstable (>=25.6)

gain = gain - 10;
% stepplot(closedSys)