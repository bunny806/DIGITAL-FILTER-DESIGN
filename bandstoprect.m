clc;                % Clear command window
clear;              % Clear workspace variables
close all;          % Close all figure windows

% -------- Filter Specifications --------
N = 41;             % Filter length (number of coefficients)
wc1 = 0.3*pi;       % Lower cutoff frequency
wc2 = 0.6*pi;       % Upper cutoff frequency

Wn = [wc1 wc2]/pi;  % Normalize frequencies (range 0 to 1)

% -------- FIR Band-Stop Filter Design --------
b = fir1(N-1, Wn, 'stop', rectwin(N));   % Using Rectangular window

% -------- Frequency Response --------
[H, w] = freqz(b,1,1024);  % Compute frequency response

figure;

% Magnitude Response
subplot(3,1,1);
plot(w/pi, abs(H), 'LineWidth',1.5);
grid on;
title('Magnitude Response - Rectangular Window');
xlabel('Normalized Frequency (\times\pi)');
ylabel('Magnitude');

% Phase Response
subplot(3,1,2);
plot(w/pi, angle(H), 'LineWidth',1.5);
grid on;
title('Phase Response - Rectangular Window');
xlabel('Normalized Frequency (\times\pi)');
ylabel('Phase (radians)');

% Impulse Response
subplot(3,1,3);
stem(0:N-1, b, 'filled');
grid on;
title('Impulse Response - Rectangular Window');
xlabel('n');
ylabel('h(n)');