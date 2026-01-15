clc; clear; close all;

A = 1;
fs = 1;             % Sampling frequency
t = 0:0.001:1;
n = 0:20;

f1 = 0.2;           % Hz
f2 = 0.8;           % Hz (aliases when sampled)

xc1 = A*cos(2*pi*f1*t);
xc2 = A*cos(2*pi*f2*t);

xd1 = A*cos(2*pi*f1*n);
xd2 = A*cos(2*pi*f2*n);

figure('Color','w');

subplot(2,2,1)
plot(t,xc1); grid on;
title('Continuous: f = 0.2 Hz');

subplot(2,2,2)
plot(t,xc2); grid on;
title('Continuous: f = 0.8 Hz');

subplot(2,2,3)
stem(n,xd1,'filled'); grid on;
title('Sampled Signal (0.2 Hz)');

subplot(2,2,4)
stem(n,xd2,'filled'); grid on;
title('Sampled Signal (0.8 Hz)');

sgtitle('Aliasing: Different Analog Frequencies → Same Discrete Samples');
