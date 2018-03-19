%Cheng Shi
%dx1502 WUT
%03.19.2018
%~~~~~~~~~~~
function STanalysis(frame)
L=length(frame);
E=sum(frame.^2); %energy
M=sum(abs(frame)); %average magenitude
for i=2:L
    a=sign(frame(i))-sign(frame(i-1));
    Z=0.5*sum(abs(a)); %zero-corssing rate
end
disp('Short-time energy =');
disp(E);
disp('Short-time average magenitude =');
disp(M)
disp('Short-time zero-corssing rate =');
disp(Z);
figure(1);
plot(autocorr(frame)) %autocorrelation function
grid on;
title('Short-time autocorrelation function');
