% cross-bridge activation, force generation, coupled

function dY = muscleforcefat_ode(t, y, t_stim, num_p)
global tau_c tau_1 tau_2 A;

SUM = 0;
K_M = 1;
R_0 = K_M + 1.04;

n = floor(t / t_stim) + 1; % determine n-pulse in current time, t

if n <= num_p
    n = n; % current n-pulse
else
    n = num_p; % final n-pulse
end

for i = 1:n % summation term for t_i of n-pulse
    sum = (1 + (R_0 - 1) * exp(-(t_stim) / tau_c)) * exp(-((t - t_stim * (i - 1)) / tau_c));
    SUM = SUM + sum;
end

dF = (1 / tau_c) * SUM - (y(1) / tau_c); % dC_N/dt
dC_N = A * (y(1) / (K_M + y(1))) - (y(2) / (tau_1 + (tau_2 * (y(1) / (K_M + y(1)))))); % dF/dt
dY = [dF; dC_N]; % coupling odes