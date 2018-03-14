% state variables
C_N0 = 0;
F_0 = 0;

% free parameters
% human muscle model - long length (90 degrees) nonfatigued (fig 6, 1998 paper)
tau_c = 21.1; % in ms; time constant controling rise and decay of C_N
tau_1 = 46.2; % in ms; time constant of force decline at absence of strongly bound cross-bridges
tau_2 = 340.1; % in ms; time constant of force decline due to extra fristion b/w actin and myosin from presence of strongly bound cross-bridges
A = 4.7; % in N/ms; scaling factor for forceand shortening velocity
% R_0; % magnitude of enhancement in C_N form the following stimuli
% K_m; % sensitivity of strongly bound cross-bridges to C_N
% n = 6; % total number of stimulus in train before time t
% t_stim; % in ms; time of ith stimulation
% t = 0; % time since beginning of the stimulation train

