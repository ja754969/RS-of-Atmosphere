clear;clc;close all
%%
a_water = 17.2693882;
b_water = 35.86; % K
a_ice = 21.8745584;
b_ice = 7.66; % K
K_to_celsius = 273.15;
T_water = [-20+K_to_celsius:0.1:100+K_to_celsius];
T_ice = [-20+K_to_celsius:0.1:0+K_to_celsius];
e_s_water = 6.1078*exp(a_water.*(T_water-273.16)./(T_water-b_water));
e_s_ice = 6.1078*exp(a_ice.*(T_ice-273.15)./(T_ice-b_ice));
% e_s_ice =
% 6.11*10.^(9.5.*(T_ice-K_to_celsius)./(T_ice-K_to_celsius+265.5)); % Wikipedia
%%
f = figure;
f.PaperUnits = 'centimeters';
f.PaperSize = [29.7 21]; % A4 papersize (horizontal,21-by-29.7 cm,[width height])
f.PaperType = '<custom>';
f.WindowState = 'maximized';
f
water = plot(T_water-K_to_celsius,e_s_water);hold on;
ice = plot(T_ice-K_to_celsius,e_s_ice);hold off;
xlabel('Temperature (^{o}C)','FontSize',14)
ylabel('e_s : Saturated Vapor Pressure (hPa)','FontSize',14)
legend([water,ice],{'water','ice'},'FontSize',12,'TextColor','blue')
grid on;
grid minor;
%% Zoom in
ax2 = axes;
ax2.Position = [0.15 0.2 0.2 0.1];
water = plot(T_water-K_to_celsius,e_s_water);hold on;
ice = plot(T_ice-K_to_celsius,e_s_ice);hold off;
xlim([-20.05 -18])
ylim([0.8 2])
ax2.YAxisLocation = 'right';
%% Zoom in
ax3 = axes;
ax3.Position = [0.15 0.35 0.2 0.1];
water = plot(T_water-K_to_celsius,e_s_water);hold on;
ice = plot(T_ice-K_to_celsius,e_s_ice);hold off;
xlim([-.05 0.01])
ylim([6.1 6.11])
ax3.YAxisLocation = 'right';
%% Output the figure
print('ATM_RS_00781035_EX_01','-dtiffn','-r300')
print('ATM_RS_00781035_EX_01','-dpdf','-fillpage')