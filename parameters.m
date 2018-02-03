% state variables
C_N
F

% free parameters
% rat muscle model - nonfatigued
tau_c = 5.57; % in ms; time constnat controling rise and decay of C_N
tau_1 = 24.23; % in ms; time constant of force decline at absence of strongly bound cross-bridges
tau_2 = 234.69; % in ms; time constant of force decline due to extra fristion b/w actin and myosin from presence of strongly bound cross-bridges
A = 1.63; % in N/ms; scaling factor for forceand shortening velocity
R_0; % magnitude of enhancement in C_N form the following stimuli
K_m; % sensitivity of strongly bound cross-bridges to C_N
n; % total number of stimulus in train before time t
t_i; % in ms; time of ith stimulation
