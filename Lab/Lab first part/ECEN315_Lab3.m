clear all
T = readtable('Data.csv');
Tx = T.Var1
Ty = T.Var2
plot(Tx,Ty)
grid on

% % peek1
% hold on
% Tx1 = 0.47; Ty1 = 184.663196410543;
% plot(Tx1,Ty1,'r.')
% % peek2
% hold on
% Tx2 = 1.43; Ty2 = 95.0423459923307;
% plot(Tx2, Ty2,'r.')
% % peek3 
% hold on
% Tx3 = 2.4; Ty3 = 48.9372102813896;
% plot(Tx3, Ty3,'r.')
% % peek4 
% hold on
% Tx4 = 3.37; Ty4 = 25.1855912926986;
% plot(Tx4, Ty4,'r.')
% % peek5
% hold on
% Tx5 = 4.33; Ty5 = 12.9627569592215;
% plot(Tx5, Ty5,'r.')

n = 10; % number of cycles
Xi = 184.663196410543; % first peak
% Logarithmic decrement
nDelta = log(Xi/((1-0.6)*Xi)) % (1-0.6) means 60% reduction after 10 cycles
delta = nDelta/n
% Dampling factor
zeta = delta/sqrt((2*pi)^2+delta^2)
% Dampling Coefficient
c = zeta*50 % 50 is the critical damping constant

A = -256;
t = 0.47;
w = (2*pi)/T; 
T = 0.96;
phi = 0;

