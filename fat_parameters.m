% state variables
C_N0 = 0;
F_0 = 0;

tau_c = 20; % in ms; time constnat controling rise and decay of C_N
tau_1 = 50; % in ms; time constant of force decline at absence of strongly bound cross-bridges
tau_2 = 69.5; % in ms; time constant of force decline due to extra friction b/w actin and myosin from presence of strongly bound cross-bridges
tau_fat = 127*1000; % in s; time constant characterising the rate of recovery
A = 3; % in N ms^-1; scaling factor for forceand shortening velocity

A_rest = 3.009; % in N ms^-1
K_mrest = 0.103;
tau_1rest = 50.957; % in ms

% alpha_A = -3.9e-7; % in ms^-2
% alpha_K_m = 4.0e-8; % in N^-1 ms^-1
% alpha_tau_1 = 7.3e-6; % in N^-1

alpha_A = -4.0e-7; % in s^-2
alpha_K_m = 1.9e-8; % in N^-1 s^-1
alpha_tau_1 = 2.1e-5; % in N^-1

% R_0; % magnitude of enhancement in C_N form the following stimuli
K_m = 0.1; % sensitivity of strongly bound cross-bridges to C_N
% n; % total number of stimulus in train before time t
% t_stim; % in ms; time of ith stimulation