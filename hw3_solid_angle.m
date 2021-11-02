clear;clc;close all
%% Variable
H = 36000; % km
a_e = 6371.2; % km

omega = 2*pi*(1-(a_e/(a_e+H))); % solid angle
%%
phi = acosd(1-omega/2/pi); % phi angle
%%
% f = figure;
% f.PaperUnits = 'centimeters';
% f.PaperSize = [29.7 21]; % A4 papersize (horizontal,21-by-29.7 cm,[width height])
% f.PaperType = '<custom>';
% f.WindowState = 'maximized';
% f

%% Output the figure
% print('ATM_RS_00781035_EX_03','-dtiffn','-r300')
% print('ATM_RS_00781035_EX_03','-dpdf','-fillpage')