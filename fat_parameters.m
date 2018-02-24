% state variables
C_N0 = 0;
F_0 = 0;

% free parameters
tau_c = 5.57; % in ms; time constnat controling rise and decay of C_N
tau_1 = 50; % in ms; time constant of force decline at absence of strongly bound cross-bridges
tau_2 = 234.69; % in ms; time constant of force decline due to extra fristion b/w actin and myosin from presence of strongly bound cross-bridges
tau_fat = 127; % in ms; time constant characterising the rate of recovery
A = 3; % in N/ms; scaling factor for forceand shortening velocity
A_rest = 3.009;
K_mrest = 0.103;
tau_1rest = 50.957;
alpha_A = -3.9e-7;
alpha_K_m = 4.0e-8;
alpha_tau_1 = 7.3e-6;
% R_0; % magnitude of enhancement in C_N form the following stimuli
K_m = 0.1; % sensitivity of strongly bound cross-bridges to C_N
% n; % total number of stimulus in train before time t
% t_stim; % in ms; time of ith stimulation