function [T,p] = getairpressure(altitude)

if altitude < 11000   % Troposphere
    T = 15.04 - 0.00649 * altitude;
    p = 101.29 * ((T + 273.1) / 288.08) ^ 5.256;
elseif altitude > 11000 && altitude < 25000   % Lower Stratosphere
    T = -56.46;
    p = 22.65 * exp(1.73 - 0.000157 * altitude);
elseif altitude > 25000   % Upper Stratosphere
    T = -131.21 + 0.00299 * altitude;
    p = 2.488 * ((T + 273.1) / 216.6) ^ (-11.388);
end

end

