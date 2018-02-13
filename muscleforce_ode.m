% cross-bridge activation, force generation, coupled

function dY = muscleforce_ode(t, y)
global tau_c tau_1 tau_2 A;

SUM = 0;

t_stim = 33;
% CFT120 = 8.3hz;
% CFT100 = 10hz;
% CFT70 = 14.3hz
% CFT50 = 20hz; 
% CFT40 = 25hz; 
% CFT33 = 30hz; 
% CFT25 = 40hz; 
% CFT20 = 50hz; 
% CFT10 = 60hz

n = floor(t / t_stim) + 1;

if n <= 6
    n = n;
else
    n = 6;
end

for i = 1:n
    sum = exp(-((t - t_stim * (i - 1)) / tau_c)) - (y(1) / tau_c);
    SUM = SUM + sum;
end

dy1 = (1 / tau_c) * SUM; 
dy2 = A * (y(1) / (1 + y(1))) - (y(2) / (tau_1 + (tau_2 * (y(1) / (1 + y(1))))));
dY = [dy1; dy2];