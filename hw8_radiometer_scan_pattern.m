clear;clc;close all

i = 98.9782; %degree
H = 850; % km
P = 101.946; % min
a_e = 6371.22; % km
earth_circumference = 2*pi*a_e;

scan_duration = 64*3.5; % second
%% HIRS/2
max_nadir_angle = 49.5; % degree
nadir_angle_distance = 1.8; % degree
beta = deg2rad(1.25);
scan_time_per_line_HIRS_2 = 6.4;
field_number = 0:1:max_nadir_angle/nadir_angle_distance; % number of the field

number_of_scan_line = 1:(scan_duration/scan_time_per_line_HIRS_2);
[HIRS_2_nadir_resolution,HIRS_2_edge_resolution_x,HIRS_2_edge_resolution_y,HIRS_2_scan_lines_distance,...
    HIRS_2_scan_bands_half_width_max] = orbit_parameter(a_e,H,P,max_nadir_angle,beta,scan_time_per_line_HIRS_2);
%%
fig = figure;
fig.PaperUnits = 'centimeters';
fig.PaperSize = [29.7 21]; % A4 papersize (horizontal,21-by-29.7 cm,[width height])
fig.PaperType = '<custom>';
fig.WindowState = 'maximized';
ax1 = axes
ax1.Position = [0.1 0.1 0.85 0.85];

%%
base_map_x = linspace(-HIRS_2_scan_bands_half_width_max,HIRS_2_scan_bands_half_width_max,100);
base_map_y = linspace(0,number_of_scan_line(end)*HIRS_2_scan_lines_distance,100);
plot(base_map_x,zeros(length(base_map_x)),'Color',[0.8 0.8 0.8],'LineWidth',2)
hold on
plot(zeros(length(base_map_y)),base_map_y,'Color',[0.8 0.8 0.8],'LineWidth',2)
hold on;
scan_range_x_center = 0;

for h = number_of_scan_line
    for k = field_number
        [HIRS_2_nadir_resolution,HIRS_2_edge_resolution_x,HIRS_2_edge_resolution_y,HIRS_2_scan_lines_distance,...
            HIRS_2_scan_bands_half_width] = orbit_parameter(a_e,H,P,k*nadir_angle_distance,beta,scan_time_per_line_HIRS_2);
%         scan_range_x_center = scan_range_x_center + HIRS_2_edge_resolution_x;
        scan_range_x = HIRS_2_nadir_resolution/2 + HIRS_2_scan_bands_half_width + HIRS_2_edge_resolution_x/2*cos(linspace(0,2*pi,100));
        scan_range_y = (h-1)*HIRS_2_scan_lines_distance + HIRS_2_edge_resolution_y/2*sin(linspace(0,2*pi,100));
        plot(scan_range_x,scan_range_y+(k+1)*HIRS_2_scan_lines_distance/(2*(max(field_number)+1)),'-r','LineWidth',1.5)
        hold on;
        plot(-scan_range_x,scan_range_y-(k+1)*HIRS_2_scan_lines_distance/(2*(max(field_number)+1)),'-r','LineWidth',1.5)
        hold on;
    end
    scan_range_y = (h-1)*HIRS_2_scan_lines_distance;
    plot(base_map_x,linspace(scan_range_y-(max(field_number)+1)*HIRS_2_scan_lines_distance/(2*max(field_number)),scan_range_y+(max(field_number)+1)*HIRS_2_scan_lines_distance/(2*max(field_number)),length(base_map_x)),'k-','LineWidth',1)
    hold on
end
axis equal
%% SSU
max_nadir_angle = 40; % degree
nadir_angle_distance = 11.4; % degree
beta = deg2rad(10);
scan_time_per_line_SSU = 32;

field_number = 0:1:max_nadir_angle/nadir_angle_distance; % number of the field

number_of_scan_line = 1:(scan_duration/scan_time_per_line_SSU);
[SSU_nadir_resolution,SSU_edge_resolution_x,SSU_edge_resolution_y,SSU_scan_lines_distance,...
    SSU_scan_bands_half_width_max] = orbit_parameter(a_e,H,P,max_nadir_angle,beta,scan_time_per_line_SSU);

% figure;

base_map_x = linspace(-SSU_scan_bands_half_width_max,SSU_scan_bands_half_width_max,100);
base_map_y = linspace(0,number_of_scan_line(end)*SSU_scan_lines_distance,100);
plot(base_map_x,zeros(length(base_map_x)),'Color',[0.8 0.8 0.8],'LineWidth',1)
hold on
plot(zeros(length(base_map_y)),base_map_y,'Color',[0.8 0.8 0.8],'LineWidth',1)
hold on;
scan_range_x_center = 0;

for h = number_of_scan_line
    for k = field_number
        [SSU_nadir_resolution,SSU_edge_resolution_x,SSU_edge_resolution_y,SSU_scan_lines_distance,...
            SSU_scan_bands_half_width] = orbit_parameter(a_e,H,P,k*nadir_angle_distance,beta,scan_time_per_line_SSU);
%         scan_range_x_center = scan_range_x_center + SSU_edge_resolution_x;
        scan_range_x = SSU_nadir_resolution/2+SSU_scan_bands_half_width + SSU_edge_resolution_x/2*cos(linspace(0,2*pi,100));
        scan_range_y = (h-1)*SSU_scan_lines_distance + SSU_edge_resolution_y/2*sin(linspace(0,2*pi,100));
        plot(scan_range_x,scan_range_y+(k+1)*SSU_scan_lines_distance/(2*(max(field_number)+1)),'-b','LineWidth',1.5)
        hold on;
        plot(-scan_range_x,scan_range_y-(k+1)*SSU_scan_lines_distance/(2*max(field_number)),'-b','LineWidth',1.5)
        hold on;
    end
    scan_range_y = (h-1)*SSU_scan_lines_distance;
    plot(base_map_x,linspace(scan_range_y-(max(field_number)+1)*SSU_scan_lines_distance/(2*max(field_number)),scan_range_y+(max(field_number)+1)*SSU_scan_lines_distance/(2*max(field_number)),length(base_map_x)),'k-','LineWidth',1)
    hold on
end
ax1.FontSize = 15;
ax1.TickDir = 'out';
ax1.LineWidth = 3;
axis equal
%%
mkdir('./images-hw8');
saveas(gcf,['./images-hw8/Figure_5-2.jpg'])