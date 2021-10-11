clear;clc;close all
a_water = 17.2693882;
b_water = 35.86;
a_ice = 21.8745584;
b_ice = 7.66;
K_to_celsius = 273.15;
T_water = linspace(-20+K_to_celsius,50+K_to_celsius,1000);
T_ice = linspace(-20+K_to_celsius,0+K_to_celsius,1000);
e_s_water = 6.1078*exp(a_water.*(T_water-273.16)./(T_water-b_water));
e_s_ice = 6.1078*exp(a_ice.*(T_ice-273.15)./(T_ice-b_ice));
% e_s_ice =
% 6.11*10.^(9.5.*(T_ice-K_to_celsius)./(T_ice-K_to_celsius+265.5)); % Wikipedia
figure
water = plot(T_water-K_to_celsius,e_s_water);hold on;
ice = plot(T_ice-K_to_celsius,e_s_ice);hold off;
xlabel('Temperature (^{o}C)','FontSize',14)
ylabel('e_s : Saturated Vapor Pressure (hPa)','FontSize',14)
legend([water,ice],{'water','ice'},'FontSize',12,'TextColor','blue')
grid on;
grid minor;
print('hw1','-dpng')