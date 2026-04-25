clc;
clear;
close all;

% Given specifications
wc = 0.5*pi;      % cutoff frequency
N = 25;           % Filter order

% Low-pass FIR filter using rectangular window
b = fir1(N-1, wc/pi, 'low', rectwin(N));

disp('Filter Coefficients (b) = ');
disp(b)

% Frequency response
w = 0:0.01*pi:pi;
h = freqz(b, 1, w);

% ----------- PLOTS ----------------

figure;

% 1. Magnitude Response
subplot(3,1,1);
plot(w/pi, abs(h), 'k', 'LineWidth', 1.5);
grid on;
xlabel('Normalized Frequency (\times\pi rad/sample)');
ylabel('Magnitude');
title('Magnitude Response of Low-Pass FIR Filter (Rectangular Window)');

% 2. Phase Response
subplot(3,1,2);
plot(w/pi, angle(h), 'k', 'LineWidth', 1.5);
grid on;
xlabel('Normalized Frequency (\times\pi rad/sample)');
ylabel('Phase (radians)');
title('Phase Response');

% 3. Impulse Response
subplot(3,1,3);
stem(0:N-1, b, 'k', 'filled');
grid on;
xlabel('n');
ylabel('h(n)');
title('Impulse Response');