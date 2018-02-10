% cross-bridge activation

function dC_N = dC_N(t, c_n)
global n tau_c dt;

SUM = 0;

% c_n = ((t - t_stim) / tau_c) * exp(-((t - t_stim) / tau_c));

for i = 1:n
    sum = exp(-((t - t(i)) / tau_c)) - (c_n / tau_c);
    SUM = SUM + sum;
end

dC_N = (1 / tau_c) * SUM;