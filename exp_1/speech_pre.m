% Speech recorder
% Feb. 24 2017
%~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
clc
clear
close all
%~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
fs = 8000;                            % set sampling rate
r = audiorecorder(fs, 16, 1);  % creat a recoreder object
record(r);                               % speak into microphone...
pause(6);                               % set recording time
stop(r);                                   % stop reordering 
data = getaudiodata(r);         % get audio data
sound(data, fs)                      %  listen to complete recording
clear r                                     %  clear void variable
save('shicheng_8k')               % save audio data as mat format 