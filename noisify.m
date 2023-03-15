% Load the original sound file
[signal, Fs] = audioread('sound_file_2.wav');

% Generate a noise signal with the same duration and sampling frequency as the original sound file
noise = randn(length(signal), 1);

% Specify the signal-to-noise ratio (SNR) in decibels
% Lower the value, noisier the result
SNR = 10; % dB

% Scale the amplitude of the noise signal according to the SNR
noise_power = sum(noise.^2)/length(noise);
signal_power = sum(signal.^2)/length(signal);
noise_scaling_factor = sqrt(signal_power/noise_power/10^(SNR/10));
noise_scaled = noise*noise_scaling_factor;

% Add the noise signal to the original sound signal
noisy_signal = signal + noise_scaled;

% Save the noisy sound signal as a new sound file
audiowrite('noisy_sound_file.wav', noisy_signal, Fs);
