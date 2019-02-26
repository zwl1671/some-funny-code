% exp4_14_.m
clear
close all
k=26;
z=[];
p=[-6 1 2];
[num,den]=zp2tf(z,p,k);
figure(1)
subplot(211)
nyquist(num,den)
title('nyquist diagrams')
subplot(212)
pzmap(p,z)
figure(2)
[numc,denc]=cloop(num,den);
step(numc,denc)
title('step response')