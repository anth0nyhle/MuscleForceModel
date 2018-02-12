% force generation

function dFdt = dF(t, c_n, f)
global tau_1 tau_2 A;


dFdt = A * (c_n / (1 + c_n)) - (f / (tau_1 + (tau_2 * (c_n / (1 + c_n)))));