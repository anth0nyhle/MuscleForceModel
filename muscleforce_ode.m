% cross-bridge activation, force generation, coupled

function dY = muscleforce_ode(t, y, IPI, stim_t)
global tau_c tau_1 tau_2 A;

SUM = 0;
K_M = 1;
R_0 = K_M + 1.04;

% num_p = floor(stim_t / IPI);
num_p = stim_t;

n = floor(t / IPI) + 1; % determine n-pulse in current time, t

if n <= num_p
    n = n; % current n-pulse
else
    n = num_p; % final n-pulse
end

for i = 1:n % summation term for t_i of n-pulse
%     sum = exp(-((t - IPI * (i - 1)) / tau_c));
    sum = (1 + (R_0 - 1) * exp(-(IPI) / tau_c)) * exp(-((t - IPI * (i - 1)) / tau_c));
    SUM = SUM + sum;
end

dC_N = (1 / tau_c) * SUM - (y(1) / tau_c); % dC_N/dt
dF = A * (y(1) / (K_M + y(1))) - (y(2) / (tau_1 + (tau_2 * (y(1) / (K_M + y(1)))))); % dF/dt
dY = [dC_N; dF]; % coupling odes