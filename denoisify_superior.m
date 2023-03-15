% Load the audio file
% input = sampled data array
% Fs = sample rate in Hz
[input, Fs] = audioread('noisy_sound_file.wav');

% Plot the waveform
t = (0:length(input)-1)/Fs;
figure;
plot(t, input);
xlabel('Time (s)');
ylabel('Amplitude');
title('Input Audio Signal');

% Design a filter to remove the noise
% A 16th order lowpass Butterworth filter with a cutoff frequency of 2000 Hz
fc = 2000; % Hz
[b, a] = butter(16, fc/(Fs/2), 'low');
% b, a are filter coefficients
% fc/ (Fs/2) is the normalized cut off frequency

% df2 = Direct-Form II
Hd = dfilt.df2(b, a);
% Plot the magnitude response of the filter
fvtool(Hd);

% Apply the filter to the audio signal
output = filter(b, a, input);

% Save the filtered audio signal as a new audio file
audiowrite('output_audio_file_superior.wav', output, Fs);

% Plot the waveform of the filtered signal
figure;
plot(t, output);
xlabel('Time (s)');
ylabel('Amplitude');
title('Filtered Audio Signal');