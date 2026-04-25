clc;
clear;
close all;

% -------- Specifications --------
wc1 = 0.3*pi;      % Lower cutoff frequency
wc2 = 0.7*pi;      % Upper cutoff frequency
N = 25;            % Filter length

% Normalized frequencies (0 to 1)
Wn = [wc1 wc2]/pi;

% -------- FIR Bandpass using Hanning Window --------
b = fir1(N-1, Wn, 'bandpass', hann(N));

disp('Filter Coefficients b = ');
disp(b)

% -------- Frequency Response --------
[H, w] = freqz(b, 1, 1024);

% ----------- PLOTS ----------------
figure;

% 1. Magnitude Response
subplot(3,1,1);
plot(w/pi, abs(H), 'LineWidth', 1.5);
xlabel('Normalized Frequency (\times \pi)');
ylabel('|H(e^{j\omega})|');
title('Magnitude Response (Hanning Window)');
grid on;

% 2. Phase Response
subplot(3,1,2);
plot(w/pi, angle(H), 'LineWidth', 1.5);
xlabel('Normalized Frequency (\times \pi)');
ylabel('Phase (radians)');
title('Phase Response');
grid on;

% 3. Impulse Response
subplot(3,1,3);
stem(0:length(b)-1, b, 'filled');
xlabel('n');
ylabel('h(n)');
title('Impulse Response');
grid on;