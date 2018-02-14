% main
close all;
clear;

global tau_c tau_1 tau_2 A;
parameters;

t_stim = input('Interphase Interval (IPI): ');
% CFT120 = 8.3hz;
% CFT100 = 10hz;
% CFT70 = 14.3hz
% CFT50 = 20hz; 
% CFT40 = 25hz; 
% CFT33 = 30hz; 
% CFT25 = 40hz; 
% CFT20 = 50hz; 
% CFT10 = 60hz;

num_p = input('Number of Stimulation Pulses: ');

t_span = [0 800];
int = [C_N0; F_0];

options = [];

[t, dY] = ode45(@muscleforce_ode, t_span, int, options, t_stim, num_p);
% output col vec for t
% output 2 col matrix for dY, 1st col: C_N, 2nd col: F

figure(1);
subplot(2, 1, 1);
plot(t, dY(:, 1));
xlabel('Time (ms)');
ylabel('C_{N}');
ylim([0 0.1+max(dY(:, 1))]);
subplot(2, 1, 2);
plot(t, dY(:, 2));
xlabel('Time (ms)');
ylabel('Force (N)');
ylim([0 5+max(dY(:, 2))]);

