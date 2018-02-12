% cross-bridge activation

function dC_Ndt = dC_N(t, c_n)
global n tau_c ;

SUM = 0;

% c_n = ((t - t_stim) / tau_c) * exp(-((t - t_stim) / tau_c));

for i = 1:n
    sum = exp(-((t - t(i)) / tau_c)) - (c_n / tau_c);
    SUM = SUM + sum;
end

dC_Ndt = (1 / tau_c) * SUM;