clear;clc;close all

i = 98.9782; %degree
H = 850; % km
P = 101.946; % min
a_e = 6371.22; % km

% find the nadir resolution, edge resolution, scan lines distance, and scan bands half width
%% AVHRR
max_nadir_angle = 55.4; % degree
nadir_angle_distance = 0.054128; % degree
beta = 1.3*10^-3;
scan_time_per_line = 1/6;
[AVHRR_nadir_resolution,AVHRR_edge_resolution_x,AVHRR_edge_resolution_y,AVHRR_scan_lines_distance,...
    AVHRR_scan_bands_half_width] = orbit_parameter(a_e,H,P,max_nadir_angle,beta,scan_time_per_line);
%% HIRS/2
max_nadir_angle = 49.5; % degree
nadir_angle_distance = 1.8; % degree
beta = deg2rad(1.25);
scan_time_per_line = 6.4;
[HIRS_2_nadir_resolution,HIRS_2_edge_resolution_x,HIRS_2_edge_resolution_y,HIRS_2_scan_lines_distance,...
    HIRS_2_scan_bands_half_width] = orbit_parameter(a_e,H,P,max_nadir_angle,beta,scan_time_per_line);
% nadir_resolution = ; % km
% edge_resolution = ; % km^2
% scan_lines_distance = ; % km
% scan_bands_half_width = ; % km
%% SSU
max_nadir_angle = 40; % degree
nadir_angle_distance = 11.4; % degree
beta = deg2rad(10);
scan_time_per_line = 32;
[SSU_nadir_resolution,SSU_edge_resolution_x,SSU_edge_resolution_y,SSU_scan_lines_distance,...
    SSU_scan_bands_half_width] = orbit_parameter(a_e,H,P,max_nadir_angle,beta,scan_time_per_line);
% nadir_resolution = ; % km
% edge_resolution = ; % km^2
% scan_lines_distance = ; % km
% scan_bands_half_width = ; % km
%% MSU
max_nadir_angle = 47.3; % degree
nadir_angle_distance = 9.47; % degree
beta = deg2rad(7.5);
scan_time_per_line = 25.6;
[MSU_nadir_resolution,MSU_edge_resolution_x,MSU_edge_resolution_y,MSU_scan_lines_distance,...
    MSU_scan_bands_half_width] = orbit_parameter(a_e,H,P,max_nadir_angle,beta,scan_time_per_line);

% nadir_resolution = ; % km
% edge_resolution = ; % km^2
% scan_lines_distance = ; % km
% scan_bands_half_width = ; % km

