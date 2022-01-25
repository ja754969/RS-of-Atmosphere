function [nadir_resolution,edge_resolution_x,edge_resolution_y,...
    scan_lines_distance,scan_bands_half_width] = orbit_parameter(a_e,H_SAT,P,...
    max_nadir_angle,beta,scan_time_per_line)

    % nadir_resolution
    eta = 0;
    % beta % optical field (arc)
    theta_2 = asin((a_e+H_SAT)/a_e*sin(eta + beta/2)); % zenith angle of the right edge
    theta_1 = asin((a_e+H_SAT)/a_e*sin(eta - beta/2)); % zenith angle of the left edge
    nadir_resolution = a_e*abs(theta_1 - theta_2 + beta); % km

    eta = deg2rad(max_nadir_angle);
    theta_2 = asin((a_e+H_SAT)/a_e*sin(eta + beta/2)); % zenith angle of the right edge
    theta_1 = asin((a_e+H_SAT)/a_e*sin(eta - beta/2)); % zenith angle of the left edge
    theta = asin((a_e+H_SAT)/a_e*sin(eta)); % zenith angle
    edge_resolution_x = a_e*abs(theta_1 - theta_2 + beta); % km^2

    s = sqrt(a_e^2 + (a_e+H_SAT)^2 - 2*a_e*(a_e+H_SAT)*cos(theta-eta));
    edge_resolution_y = s*beta; % km^2

    earth_circumference = 2*pi*a_e;
    scan_lines_distance = earth_circumference/(P*60/scan_time_per_line); % km
    scan_bands_half_width = a_e*(theta-eta); % km : QP
%     scan_bands_half_width = a_e*(theta_1-(eta-beta/2)); % km : QA
%     scan_bands_half_width = a_e*(theta_2-(eta+beta/2)); % km : QB
end