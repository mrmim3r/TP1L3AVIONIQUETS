clear all ; clc; close all ; 
%ben Mazouzia Mohammed Chikh
% form expolentiel 
tic
T = 3;  %Period 
w = 2*pi/T; 
K =21; % hya n 
t0 = 0;  %temps initial 
t = t0:t0+T;
syms t x %hna nd5lo li symbolic in MATLAB ; 
x = exp(-t);
% hna n7sbo a0 
% int(function , variable, tinitial , tfinal )
 
for k = -K:K 
    cn(k+K+1) = (1/T)*int(x*exp(-1j*k*w*t), t,t0, t0+T);
    xe(k+K+1) = exp(1j*k*w*t);
end

xk_k2 = sum(cn.*xe);

figure(2)
ezplot(xk_k2,[t0, t0+T]) % hna plot fonction apres serie de fourier 
hold on 
ezplot(x,[t0, t0+T])

toc
