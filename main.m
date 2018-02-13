% main
close all;
clear;

global tau_c tau_1 tau_2 A;
parameters;

t_span = [0 800];
int = [C_N0; F0];

[t, dY] = ode45(@muscleforce_ode, t_span, int);

figure(1);
subplot(2, 1, 1);
plot(t, dY(:, 1));
xlabel('Time (ms)');
ylabel('C_{N}');
ylim([0 0.2+max(dY(:, 1))]);
subplot(2, 1, 2);
plot(t, dY(:, 2));
xlabel('Time (ms)');
ylabel('Force (N)');
ylim([0 10+max(dY(:, 2))]);

