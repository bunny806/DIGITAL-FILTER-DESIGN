clc;
clear;
close all;
% Design of High Pass FIR Filter using Blackman Window
wc = 0.5*pi;
N = 25;
b = fir1(N-1, wc/pi, 'high', blackman(N));
disp('b=');
disp(b)
% Frequency response
w = 0:0.01*pi:pi;
h = freqz(b, 1, w);
%PLOTS
figure;
% Magnitude Response
subplot(3,1,1);
plot(w/pi, abs(h), 'k');
xlabel('Normalized Frequency');
ylabel('Magnitude');
title('Magnitude Response Blackman Window-mygapula');
grid on;
% Phase Response
subplot(3,1,2);
plot(w/pi, angle(h), 'k');
xlabel('Normalized Frequency');
ylabel('Phase (radians)');
title('Phase Response Blackman Window-mygapula');
grid on;
% Impulse Response
subplot(3,1,3);
stem(0:length(b)-1, b, 'k');
xlabel('n');
ylabel('h(n)');
title('Impulse Response Blackman Window-mygapula');
grid on;