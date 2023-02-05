function [pressure, density] = descendingAirDensity(h)

    % h is the altitude in meters
    T0 = 288.15; % sea level temperature in Kelvins
    p0 = 101325; % sea level pressure in Pascals
    L = -0.0065; % temperature lapse rate in K/m
    R = 8.31447; % universal gas constant
    M = 0.0289644; % molar mass of dry air
    g = gravity(h); % acceleration due to gravity
    T = T0 + L * h; % temperature at altitude h

    pressure = p0 * (T / T0)^(-g * M / (R * L)); % pressure at altitude h
    density = pressure / (R * T); % density at altitude h
    
end
