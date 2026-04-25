clc;
clear;
close all;

% Low-Pass FIR Filter using Hamming Window
wc = 0.5*pi;      % Cutoff frequency
N = 25;           % Filter length

% Normalized cutoff
Wn = wc/pi;

% FIR Low-pass filter
b = fir1(N-1, Wn, 'low', hamming(N));

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
xlabel('Normalized Frequency (\times \pi)');
ylabel('|H(e^{j\omega})|');
title('Magnitude Response (Low-Pass - Hamming Window)');
grid on;

% 2. Phase Response
subplot(3,1,2);
plot(w/pi, angle(h), 'k', 'LineWidth', 1.5);
xlabel('Normalized Frequency (\times \pi)');
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