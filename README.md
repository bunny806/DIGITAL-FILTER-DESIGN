# DIGITAL-FILTER-DESIGN

COMPANY: CODTECH IT SOLUTIONS

NAME: MYGAPULA DINESH KUMAR

INTERN ID:CTIS7586

DURATION:4 WEEKS

MENTOR:NEELA SANTOSH

(TASK SUMMARY):-

1. AIM

To design and simulate a Finite Impulse Response (FIR) digital filter using Verilog / MATLAB, and analyze its performance characteristics such as frequency response, magnitude, and phase.

2. OBJECTIVE
To understand FIR filter concepts
To design FIR filter using window techniques
To simulate the filter using MATLAB or Verilog
To analyze filter performance
3. APPARATUS / SOFTWARE REQUIRED
MATLAB (with Signal Processing Toolbox)
Computer system
Basic DSP formulas and reference material
4. THEORY
Digital Filter
A digital filter processes discrete-time signals to remove unwanted components or enhance desired signals.
FIR Filter
FIR stands for Finite Impulse Response
Output depends only on present and past input values
General equation:
y[n]=
k=0
∑
N−1
h[k]⋅x[n−k]
Where:
h[k] = filter coefficients
x[n] = input signal
y[n] = output signal
Characteristics of FIR Filters
Always stable
Linear phase response
No feedback (non-recursive)
Easy to implement
Window Technique
Used to design FIR filters by truncating ideal impulse response.
Common windows:
Rectangular window
Hamming window
Hanning window
Blackman window
5. TYPES OF FIR FILTERS
Low Pass Filter
High Pass Filter
Band Pass Filter
Band Stop Filter
6. PROCEDURE (MATLAB)
Define filter specifications:
Cutoff frequency
Filter order (N)
Choose window type:
Example: Rectangular
Use FIR design function:
N = 25;
wc = 0.5*pi;
b = fir1(N-1, wc/pi, 'low', rectwin(N));
Plot frequency response:
freqz(b,1);
Observe magnitude and phase plots
7.RESULT
FIR filter successfully designed and simulated
Frequency response obtained
Output verified for given input
