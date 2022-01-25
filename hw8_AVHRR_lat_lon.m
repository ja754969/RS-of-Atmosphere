clear;clc;close all
%% given
i = 98.9782; %degree
H = 850; % km
P = 101.946*60; % satellite period : mins --> seconds
P_e = 1440*60; % rotation period of the earth : mins --> seconds
a_e = 6371.22; % km
scan_time_per_line = 1/6;
scan_line_number = 2585;
nadir_angle_distance = 0.054128; % degree
ascending_lon = 127.54;

t = scan_line_number*scan_time_per_line;

lon_ascending = 127.54;

pixel_number = 1524;
t_pixel = 0.0813*(10^-3); % 掃描兩視點時刻的間隔 (兩相鄰視角時間間距)
total_scan_line_number = P/scan_time_per_line;
total_pixel_number = 2048;
%% parameter
eta = (pixel_number-(total_pixel_number+1)/2)*nadir_angle_distance;

nadir_ascending_angle = 360*((scan_line_number-1)*scan_time_per_line+...
    (pixel_number-1)*t_pixel)/P;
geocentric_angle = rad2deg(asin(((a_e+H)/a_e)*sind(eta))-deg2rad(eta)); % 地心角

%% AVHRR
% max_nadir_angle = 55.4; % degree
% nadir_angle_distance = 0.054128; % degree
% beta = 1.3*10^-3;
% 
% [AVHRR_nadir_resolution,AVHRR_edge_resolution_x,AVHRR_edge_resolution_y,AVHRR_scan_lines_distance,...
%     AVHRR_scan_bands_half_width] = orbit_parameter(a_e,H,P,max_nadir_angle,beta,scan_time_per_line);
%%
% i = 180-i;

% nadir_ascending_angle = 90-nadir_ascending_angle;

% geocentric_angle = 90-geocentric_angle;


lat = asind(-cosd(i)*sind(geocentric_angle) + sind(i)*cosd(geocentric_angle)*sind(nadir_ascending_angle))
lon_relative_to_ascending = asind(-(cosd(i)*cosd(geocentric_angle)*sind(nadir_ascending_angle)+sind(i)*sind(geocentric_angle))/cosd(lat))
lon_relative_to_ascending = acosd(cosd(geocentric_angle)*cosd(nadir_ascending_angle)/cosd(lat))

% lon_relative_to_ascending = 90+lon_relative_to_ascending



% lat_geo = 90-lat
lat_geo = lat
lon_geo = lon_relative_to_ascending + 360*t/P_e
lon_geo = ascending_lon-lon_geo





