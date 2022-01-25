clear;clc;close all
optical_thickness = 0.2
T = exp(-optical_thickness/cosd(90-10))

%%
upper_bound = 1;
lower_bound = 0;


T_flux = 2*(-1/(T*(1+2/T)))*...
    (exp(-T*upper_bound)/(upper_bound^2)-exp(-T*lower_bound)/(lower_bound^2))+...
    2*(1/(1+2/T))*(exp(-T*upper_bound)/2/(upper_bound^2)-exp(-T*lower_bound)/2/(lower_bound^2))...

% fun = @(mu) exp(mu);
fun = @(mu) exp(-T./mu).*mu;
q = integral(fun,0,1);