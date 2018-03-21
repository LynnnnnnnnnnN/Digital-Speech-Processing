%Cheng Shi
%dx1502 WUT
%03.19.2018
%~~~~~~~~~~~
function STanalysis(frame)
L=length(frame);
E=sum(frame.^2); %energy
M=sum(abs(frame)); %average magenitude
Z=0.5*sum(abs(sign(frame(2:L))-sign(frame(1:L-1)))); %zero-corssing rate
disp('Short-time energy =');
disp(E);
disp('Short-time average magenitude =');
disp(M)
disp('Short-time zero-corssing rate =');
disp(Z);
figure(1);
plot(autocorr(frame,800)) %autocorrelation function
grid on;
title('Short-time autocorrelation function');
