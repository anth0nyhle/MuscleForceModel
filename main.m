% main
close all;
clear;

parameters;

t_span = [0 800];
int = [C_N0; F0];

[t, dydt] = ode45(@musclef_ode, t_span, int);

figure(1);
subplot(2, 1, 1);
plot(t, dydt(:, 1));
xlabel('Time (ms)');
ylabel('C_{N}');
ylim([0 0.2+max(dydt(:, 1))]);
subplot(2, 1, 2);
plot(t, dydt(:, 2));
xlabel('Time (ms)');
ylabel('Force (N)');
ylim([0 10+max(dydt(:, 2))]);

