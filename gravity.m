function [g] = gravity(h)

% function to calculate the gravitational pull at height h
% input: h - height above the surface of the Earth in meters
% output: g - gravitational pull at height h in m/s^2

R = 6.371e6; % radius of the Earth in meters
g_0 = 9.8; % standard gravitational acceleration at the surface of the Earth in m/s^2
g = g_0 * (R / (R + h))^2;


end

