clear;clc;close all
T_0 = 300; % atmosphere temperature (unit : K)
%% 667 cm^-1
nu_667 = 667;
m = 44/6.02/(10^23); % 一個分子的質量 (unit : g)
% p_2360 = 0.1/2360*1013*sqrt(300/288);
p_667 = 0.461*(10^-18)*nu_667*sqrt(T_0/m)/...
    0.1*1013/sqrt(T_0/T_0);
%% 2360 cm^-1
nu_2360 = 2360;
m = 44/6.02/(10^23);% 分子質量
p_2360 = 0.461*(10^-18)*nu_2360*sqrt(T_0/m)/...
    0.1*1013/sqrt(T_0/T_0);

%%
% 0.064/0.1*1013.25