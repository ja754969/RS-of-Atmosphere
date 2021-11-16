clear;clc;close all;
%% Constant
% 1 erg (g*(cm^2)/(sec^2)) = 10^-7 J (g*cm/(s^2))
% 1 erg (g*(cm^2)/(sec^2)) = 10^-12 J (kg*m/(s^2))
% h = 6.626*(10^-27); % Planck constant (erg-sec)
% K = 1.380622*(10^-16); % Bolztman constant (erg/K)
h = 6.626*(10^-34); % Planck constant (J-sec)
K = 1.380622*(10^-23); % Bolztman constant (J/K)
c = 3*(10^8); % light speed (m/s)
% c = 3*(10^8)*(10^2); % light speed (cm/s)
%% Variables (High-temperature black body radiation)
% c1 = 2*h*(c^2); % erg*(cm^2)/sec/(sr)
% c2 = h*c/K; % (cm-K)
c1 = 2*h*(c^2); % J*(m^2)/sec/(sr)
c2 = h*c/K; % (m-K)
wave_length_high_temp = [0.1:0.0125:5]*(10^-6); % meter
%% Figure  (High-temperature black body radiation)
f = figure;
f.PaperUnits = 'centimeters';
f.PaperSize = [29.7 21]; % A4 papersize (horizontal,21-by-29.7 cm,[width height])
f.PaperType = '<custom>';
f.WindowState = 'maximized';
f
ax1=axes;
ax1.Position = [0.05 0.55 0.8 0.4];
T_high_temp = [6500 6000 5500 5000 4500]; % Temperature in Kelvin
% B_lambda_high_temp = c1./((wave_length.^5).*(exp(c2./wave_length/T)-1)); % erg/(cm^2)/(sec)/(meter)/(sr)
for i = 1:length(T_high_temp)
    B_lambda_high_temp = c1./...
        ((wave_length_high_temp.^5).*...
        (exp(c2./wave_length_high_temp/T_high_temp(i))-1)); % J/(m^2)/(sec)/(meter)/(sr)
    bh{i} = semilogx(wave_length_high_temp*(10^6),B_lambda_high_temp/(10^6)*(10^-7),'LineWidth',4.5);
    hold on;
end
hold off;
xlim([wave_length_high_temp(1)*(10^6) wave_length_high_temp(end)*(10^6)])
ylim([0 5])
legend([bh{1}, bh{2}, bh{3}, bh{4}, bh{5}],...
    {[num2str(T_high_temp(1)) ' K'],...
    [num2str(T_high_temp(2)) ' K'],...
    [num2str(T_high_temp(3)) ' K'],...
    [num2str(T_high_temp(4)) ' K'],...
    [num2str(T_high_temp(5)) ' K']},'Location','northeastoutside',...
    'FontSize',12)
grid(ax1,'on','GridColor','k','LineWidth',2)
ax1.GridAlpha = 0.2;
ax1.FontSize = 12;
ax1.LineWidth = 2;
x_ticks = wave_length_high_temp*(10^6);
xticks([x_ticks(1):0.1:x_ticks(find(x_ticks==1)) x_ticks(find(x_ticks==2)):1:x_ticks(end)])
title('Planck''s Law : High Temperature')
ylabel(['Blackbody radiantion intensity, B_{\lambda}' '(10^7 W/{m^2}-{\mum}-sr)'],'FontSize',15)
xlabel('Wavelength \lambda (\mum)','FontSize',20)
%% Variables (Normal-temperature black body radiation)
% c1 = 2*h*(c^2); % erg*(cm^2)/sec/(sr)
% c2 = h*c/K; % (cm-K)
c1 = 2*h*(c^2); % J*(m^2)/sec/(sr)
c2 = h*c/K; % (m-K)
wave_length_normal_temp = [2:0.25:100]*(10^-6);
% linspace(2,100,5000)*(10^-6);% meter
%% Figure  (Normal-temperature black body radiation)
% figure
ax2=axes;
ax2.Position = [0.05 0.055 0.8 0.4];
% wave_length_normal_temp = wave_length_normal_temp*(10^6);
T_normal_temp = [300 290 280 260 240]; % Temperature in Kelvin
% B_lambda_constant_temp = c1./((wave_length.^5).*(exp(c2./wave_length/T)-1)); % erg/(cm^2)/(sec)/(meter)/(sr)
for i = 1:length(T_normal_temp)
B_lambda_normal_temp = c1./...
    ((wave_length_normal_temp.^5).*...
    (exp(c2./wave_length_normal_temp/T_normal_temp(i))-1)); % J/(m^2)/(sec)/(meter)/(sr)
% B_lambda_normal_temp = B_lambda_normal_temp/(10^6);
% text_loc(i) = find(max(B_lambda_normal_temp/(10^6)));
    bn{i} = semilogx(wave_length_normal_temp*(10^6),...
        B_lambda_normal_temp/(10^6),'LineWidth',4.5);
    hold on;
% text(B_lambda_normal_temp(text_loc(i))/(10^6),...
%     wave_length_normal_temp(text_loc(i))*(10^6),'K')
%     [num2str(T_normal_temp(text_loc(i))) 'L']);

end
hold off;
xlim([wave_length_normal_temp(1)*(10^6) wave_length_normal_temp(end)*(10^6)])
ylim([0 11])
legend([bn{1}, bn{2}, bn{3}, bn{4}, bn{5}],...
    {[num2str(T_normal_temp(1)) ' K'],...
    [num2str(T_normal_temp(2)) ' K'],...
    [num2str(T_normal_temp(3)) ' K'],...
    [num2str(T_normal_temp(4)) ' K'],...
    [num2str(T_normal_temp(5)) ' K']},'Location','northeastoutside',...
    'FontSize',12)
ax2.FontSize = 12;
ax2.LineWidth = 2;
x_ticks = wave_length_normal_temp*(10^6);
xticks([x_ticks(1):1:x_ticks(find(x_ticks==10)) x_ticks(find(x_ticks==20)):10:x_ticks(end)])
xticklabels.FontSize = 20;
grid(ax2,'on','GridColor','k','LineWidth',20)
ax2.GridAlpha = 0.2;
title('Planck''s Law : Normal Temperature')
ylabel(['Blackbody radiantion intensity, B_{\lambda}' '(W/{m^2}-{\mum}-sr)'],'FontSize',15)
xlabel('Wavelength \lambda (\mum)','FontSize',20)
%% Output the figure
print('ATM_RS_00781035_EX_04_part2','-dtiffn','-r300')
print('ATM_RS_00781035_EX_04_part2','-dpdf','-fillpage')