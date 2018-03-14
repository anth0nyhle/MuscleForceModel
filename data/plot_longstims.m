close all;
clear;

load('longstimCFT.mat');

figure(1);
plot(Model1_CFT10_longstim(:, 1)/1000, Model1_CFT10_longstim(:, 2), '--');
hold on;
plot(Model2_CFT10_longstim(:, 1)/1000, Model2_CFT10_longstim(:, 2), ':');
plot(Model3_CFT10_longstim(:, 1)/1000, Model3_CFT10_longstim(:, 2));
xlabel('Time (s)');
ylabel('Force (N)');
legend('Model 1', 'Model 2', 'Model 3');
hold off;

figure(2);
plot(Model1_CFT33_longstim(:, 1)/1000, Model1_CFT33_longstim(:, 2), '--');
hold on;
plot(Model2_CFT33_longstim(:, 1)/1000, Model2_CFT33_longstim(:, 2), ':');
plot(Model3_CFT33_longstim(:, 1)/1000, Model3_CFT33_longstim(:, 2));
xlabel('Time (s)');
ylabel('Force (N)');
legend('Model 1', 'Model 2', 'Model 3');
hold off;

figure(3);
plot(Model1_CFT100_longstim(:, 1)/1000, Model1_CFT100_longstim(:, 2), '--');
hold on;
plot(Model2_CFT100_longstim(:, 1)/1000, Model2_CFT100_longstim(:, 2), ':');
plot(Model3_CFT100_longstim(:, 1)/1000, Model3_CFT100_longstim(:, 2));
xlabel('Time (s)');
ylabel('Force (N)');
legend('Model 1', 'Model 2', 'Model 3');
hold off;