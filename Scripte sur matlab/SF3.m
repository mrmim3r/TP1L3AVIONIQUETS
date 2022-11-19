clear all ; clc; close all ; 
tic
T = 3;  %Period 
w = 2*pi/T; 
K =20; % hya n 
t0 = 0;  %temps initial 
t = t0:t0+T;
syms t x %hna nd5lo li symbolic in MATLAB ; 
x = exp(-t);

a0 = (2/T)*int(x, t, t0, t0+T);% hna n7sbo a0 
% int(function , variable, tinitial , tfinal )
K = [5; 6; 7; 20 ; 21 ] % le valeur de K 

for i= 1: length(K)
    tic
    s1 = 0; % la sum de an 
    s2 = 0; % la sum de bn 
    for k=1:K(i) 

        an(k) = (2/T)*int(x*cos(k*w*t), t, t0, t0+T); % hna n7sbo an
        bn(k) = (2/T)*int(x*sin(k*w*t), t, t0, t0+T); % hna n7sbo bn


        s1 = s1 + an(k)*cos(k*w*t);
        s2 = s2 + bn(k)*sin(k*w*t);

    end

    x_k = a0/2 + s1 +s2 ; % x apres le serie de fourier 

    figure(i)
    ezplot(x_k,[t0, t0+T]) % hna plot fonction apres serie de fourier 
    hold on 
    ezplot(x,[t0, t0+T])
    toc
end
  
