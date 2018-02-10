% force generation

function dF = dF(tau_1, tau_2, A, C_N, f)
global dt;


dF = A * (C_N / (1 + C_N)) - (f / (tau_1 + (tau_2 * (C_N / (1 + C_N)))));