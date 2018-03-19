%Cheng Shi
%dx1502 WUT
%03.19.2018
%~~~~~~~~~~~
%This is a function of enframing.
%Input signal(data,fs),and choose a window function.
%The frames will save in frameSet[бн] by column.
%Each frame's starting time will save in timeAxis.
function [frameSet, timeAxis] = enframe(data, fs, timeperFrame, overlapRate, winF) 
L=timeperFrame*fs;
interval=fix( L*(1-overlapRate) );
frames=fix( length(data)/interval );
data=[data,zeros(1,L*frames-length(data))];
winfunc=str2func(winF);
frameSet=zeros(L,frames);
timeAxis=zeros(1,frames);
for i=1:frames+1
    n=interval*(i-1);
    frameSet(1:L,i)=data(n+1:n+L).*winfunc(L)';
    timeAxis(i)=n/fs;
end