%Cheng Shi
%dx1502 WUT
%03.19.2018
%~~~~~~~~~~~
%This is a script that implements the emframing  
%of an peech signal.Then do a Short-time-domain analysis.
%~~~~~~~~~~~
clc
clear
close all
%~~~~~~~~~~~
%STEP 1:: load prepared data%
load('Kugimiya');   %or to make a new data through "speech_pre.m"
data=data';

%STEP 2:: enframe%
%use hamming
%more details at "enframe.m"
[frameSet, timeAxis]=enframe(data, fs,0.02,0.50,'hamming');

%STEP 3:: analysis%
%more detailes at "STanalysis.m"
N_20=frameSet(:,20);%get the 20th frame
NT_20=timeAxis(20)*fs;%frame's beginning
L=length(N_20);
data_20=data(NT_20+1:NT_20+L);
STanalysis(N_20);%short time analysis
figure(2);
plot((1:L),N_20);
hold on
plot((1:L),data_20);
legend('After enframe','Before enframe');
xlabel('Time');
ylabel('Magnitude');
title('Enframe and Analysis by Cheng');




