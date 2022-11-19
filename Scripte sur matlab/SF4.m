clear all ; clc; close all ; 
%ben Mazouzia Mohammed Chikh
tic
T = 3;
t0 = 0;  %temps initial 
t =1;3;
syms t x T %hna nd5lo li symbolic in MATLAB ; 

x = exp(-t);
d = int((abs(x)).^2, t, 0, T)
Ps = limit((1/(T))*d, T, inf) % puissance moyenne
E  =  limit(d, T, inf) % energy moyenne 
toc