close all;
clear;

load('Model1_6pulses.mat');
load('Model2_6pulses.mat');
load('Model3_6pulses.mat');

figure(1);
plot(Model1_CFT10(:, 1), Model1_CFT10(:, 2), '--');
hold on;
plot(Model2_CFT10(:, 1), Model2_CFT10(:, 2), ':');
plot(Model3_CFT10(:, 1), Model3_CFT10(:, 2));
xlabel('Time (s)');
ylabel('Force (N)');
legend('Model 1', 'Model 2', 'Model 3');
hold off;

figure(2);
plot(Model1_CFT33(:, 1), Model1_CFT33(:, 2), '--');
hold on;
plot(Model2_CFT33(:, 1), Model2_CFT33(:, 2), ':');
plot(Model3_CFT33(:, 1), Model3_CFT33(:, 2));
xlabel('Time (s)');
ylabel('Force (N)');
legend('Model 1', 'Model 2', 'Model 3');
hold off;

figure(3);
plot(Model1_CFT40(:, 1), Model1_CFT40(:, 2), '--');
hold on;
plot(Model2_CFT40(:, 1), Model2_CFT40(:, 2), ':');
plot(Model3_CFT40(:, 1), Model3_CFT40(:, 2));
xlabel('Time (s)');
ylabel('Force (N)');
legend('Model 1', 'Model 2', 'Model 3');
hold off;

figure(4);
plot(Model1_CFT70(:, 1), Model1_CFT70(:, 2), '--');
hold on;
plot(Model2_CFT70(:, 1), Model2_CFT70(:, 2), ':');
plot(Model3_CFT70(:, 1), Model3_CFT70(:, 2));
xlabel('Time (s)');
ylabel('Force (N)');
legend('Model 1', 'Model 2', 'Model 3');
hold off;

figure(5);
plot(Model1_CFT100(:, 1), Model1_CFT100(:, 2), '--');
hold on;
plot(Model2_CFT100(:, 1), Model2_CFT100(:, 2), ':');
plot(Model3_CFT100(:, 1), Model3_CFT100(:, 2));
xlabel('Time (s)');
ylabel('Force (N)');
legend('Model 1', 'Model 2', 'Model 3');
hold off;