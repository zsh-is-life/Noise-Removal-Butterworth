# Noise-Removal-Butterworth
A collection of MATLAB scripts that can artificially add noise and remove noise to and from an audio file.

## Instructions
1. First run the noisify.m file to produce a noise audio file called 'noisy_sound_file.wav'
2. Then run the three denoisify files one by one.

## Aim: Removal of high frequency noise
Audio noise can be introduced into audio recordings due to various factors, such as electrical interference, microphone hiss. Noise can make interpretation of audio messages difficult, hence it is crucial for noise to be attenuated for a better listening experience.

## Methodology
Low pass Butterworth filters are used of varying orders to process a noisy audio file to suppress noise. Varying orders showcase how the Butterworth filter behaves in performance. The `butter` command is used to generate filter coefficients of a butterworth filter of known characteristics like order and cutoff frequency.

## A few words about Butterworth filters
A typical linear filter used in digital signal processing for tasks like noise removal and signal smoothing is the Butterworth filter.
The response of the filter is intended to drop off gradually towards zero in the stopband and be as flat as possible in the passband.
The number of poles in a Butterworth filter, or its order, determines how abruptly the filter rolls off towards zero in the stopband.
With higher order filters, the rolloff is steeper. 

Higher order filters have some major drawbacks such as higher computational complexity which can result in significantly longer processing times for digital signal processors or general computers running MATLAB in this case. Higher order filters are also more sensitivity to phase distortion.

## Conclusions
This small project displays the comparison between a first, fourth and sixteenth order Butterworth filters when it comes to de-noising a noisy audio file.
The first order filter barely removes any noise.
The fourth order filter improves noise removal but hurts the audio quality of speech.
The sixteenth order filter, greatly removes noise but also significants lowers speech quality.
