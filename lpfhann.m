clc;
clear;
close all;

% Design of Low Pass FIR Filter using Hanning Window
wc = 0.5*pi;     % Cutoff frequency
N = 25;          % Filter length

b = fir1(N-1, wc/pi, 'low', hann(N));

disp('b = ');
disp(b)

% Frequency response
w = 0:0.01*pi:pi;
h = freqz(b, 1, w);

% ----------- PLOTS ----------------
figure;

% 1. Magnitude Response
subplot(3,1,1);
plot(w/pi, abs(h), 'k', 'LineWidth', 1.5);
xlabel('Normalized Frequency');
ylabel('Magnitude');
title('Magnitude Response (Low Pass - Hanning Window)');
grid on;

% 2. Phase Response
subplot(3,1,2);
plot(w/pi, angle(h), 'k', 'LineWidth', 1.5);
xlabel('Normalized Frequency');
ylabel('Phase (radians)');
title('Phase Response');
grid on;

% 3. Impulse Response
subplot(3,1,3);
stem(0:length(b)-1, b, 'k', 'filled');
xlabel('n');
ylabel('h(n)');
title('Impulse Response');
grid on;