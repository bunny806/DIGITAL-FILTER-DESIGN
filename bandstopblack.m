clc;
clear;
close all;

% -------- Filter Specifications --------
N = 41;
wc1 = 0.3*pi;
wc2 = 0.6*pi;

Wn = [wc1 wc2]/pi;

% -------- FIR Band-Stop Filter Design --------
b = fir1(N-1, Wn, 'stop', blackman(N));   % Using Blackman window

% -------- Frequency Response --------
[H, w] = freqz(b,1,1024);

figure;

% Magnitude Response
subplot(3,1,1);
plot(w/pi, abs(H), 'LineWidth',1.5);
grid on;
title('Magnitude Response - Blackman Window');
xlabel('Normalized Frequency (\times\pi)');
ylabel('Magnitude');

% Phase Response
subplot(3,1,2);
plot(w/pi, angle(H), 'LineWidth',1.5);
grid on;
title('Phase Response - Blackman Window');
xlabel('Normalized Frequency (\times\pi)');
ylabel('Phase (radians)');

% Impulse Response
subplot(3,1,3);
stem(0:N-1, b, 'filled');
grid on;
title('Impulse Response - Blackman Window');
xlabel('n');
ylabel('h(n)');